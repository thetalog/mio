#include <iostream>
#include <string>
#include <unordered_map>
#include <boost/asio.hpp>
#include <boost/beast.hpp>
#include <boost/beast/websocket.hpp>
#include <vector>
#include <memory>
#include <nlohmann/json.hpp>

namespace asio = boost::asio;
namespace beast = boost::beast;
namespace websocket = beast::websocket;

using json = nlohmann::json;
using tcp = asio::ip::tcp;
using websocket_stream = websocket::stream<tcp::socket>;

std::vector<json> sessionVector;

class SignalingServer; // Forward declaration

class Session : public std::enable_shared_from_this<Session>
{
public:
    Session(tcp::socket socket, SignalingServer &server, std::vector<std::shared_ptr<Session>>& allSessions)
        : ws_(std::move(socket)), allSessions_(allSessions), server_(server) {}

    void start()
    {
        ws_.async_accept([self = shared_from_this()](beast::error_code ec)
                         { self->on_accept(ec); });
    }

    ~Session(); // Destructor declaration

private:
    void on_accept(beast::error_code ec)
    {
        if (ec)
        {
            std::cerr << "Accept error: " << ec.message() << std::endl;
            return;
        }
        std::cout << "Client connected" << std::endl;
        do_read();
    }

    void do_read()
    {
        ws_.async_read(buffer_, [self = shared_from_this()](beast::error_code ec, std::size_t bytes_transferred)
                       { self->on_read(ec, bytes_transferred); });
    }

    void on_read(beast::error_code ec, std::size_t bytes_transferred)
    {
        if (ec == websocket::error::closed)
        {
            std::cout << "Client disconnected" << std::endl;
            return;
        }
        if (ec)
        {
            std::cerr << "Read error: " << ec.message() << std::endl;
            return;
        }

        // Check if the received message is binary
        if (ws_.got_binary())
        {
            std::cout << "Received binary data of size: " << bytes_transferred << " bytes" << std::endl;
            // Here you can process the binary data as needed
        }
        else
        {
            std::string message = beast::buffers_to_string(buffer_.data());
            std::cout << "Received text message: " << message << std::endl;
            for (auto& session : allSessions_){
                if(ip == session->ip && port == session->port){
                    continue;
                } else{
                    session->do_write(message);
                }
            }
        }

        buffer_.consume(bytes_transferred);
        do_read();
    }

    void do_write(const std::string &message)
    {
        ws_.async_write(asio::buffer(message), [self = shared_from_this()](beast::error_code ec, std::size_t bytes_transferred)
                        { self->on_write(ec, bytes_transferred); });
    }

    void on_write(beast::error_code ec, std::size_t bytes_transferred)
    {
        if (ec)
        {
            std::cerr << "Write error: " << ec.message() << std::endl;
        }
    }

    websocket_stream ws_;
    beast::flat_buffer buffer_;
    SignalingServer &server_; // Reference to the server to manage sessions
    std::vector<std::shared_ptr<Session>> &allSessions_;
    std::string ip = ws_.next_layer().remote_endpoint().address().to_string();
    std::string port = std::to_string(ws_.next_layer().remote_endpoint().port());
};

class SignalingServer
{
public:
    SignalingServer(asio::io_context &ioc, tcp::endpoint endpoint)
        : acceptor_(ioc, endpoint)
    {
        accept();
    }

    void add_session(std::shared_ptr<Session> session)
    {
        sessions_.push_back(std::move(session));
    }
    
    std::vector<std::shared_ptr<Session>>& get_sessions(){
        return sessions_;
    }

    void remove_session(Session *session_ptr)
    {
        sessions_.erase(
            std::remove_if(sessions_.begin(), sessions_.end(),
                           [session_ptr](const std::shared_ptr<Session> &session)
                           { return session.get() == session_ptr; }),
            sessions_.end());
    }

private:
    void accept()
    {
        acceptor_.async_accept([this](beast::error_code ec, tcp::socket socket)
                               {
            if (!ec) {
                auto session = std::make_shared<Session>(std::move(socket), *this, get_sessions());
                add_session(session);
                session->start();
            }
            else {
                std::cerr << "Accept error: " << ec.message() << std::endl;
            }
            accept(); });
    }

    tcp::acceptor acceptor_;
    std::vector<std::shared_ptr<Session>> sessions_; // Vector to store connected sessions
};

// Destructor implementation outside of class definition
Session::~Session() {
    server_.remove_session(this);
}

int main()
{
    try
    {
        asio::io_context ioc;
        tcp::endpoint endpoint(tcp::v4(), 8080);
        SignalingServer server(ioc, endpoint);
        std::cout << "WebSocket server is running on ws://127.0.0.1:8080/" << std::endl;
        ioc.run();
    }
    catch (const std::exception &e)
    {
        std::cerr << "Error: " << e.what() << std::endl;
    }
    return 0;
}
