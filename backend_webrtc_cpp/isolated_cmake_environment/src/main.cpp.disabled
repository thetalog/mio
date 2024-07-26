#include <iostream>
#include <string>
#include <unordered_map>
#include <boost/asio.hpp>
#include <boost/beast.hpp>
#include <boost/beast/websocket.hpp>

namespace asio = boost::asio;
namespace beast = boost::beast;
namespace websocket = beast::websocket;

using tcp = asio::ip::tcp;
using websocket_stream = websocket::stream<tcp::socket>;

class Session : public std::enable_shared_from_this<Session>
{
public:
    Session(tcp::socket socket)
        : ws_(std::move(socket)) {}

    void start()
    {
        ws_.async_accept([self = shared_from_this()](beast::error_code ec)
                         { self->on_accept(ec); });
    }

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
            do_write(message); // Echo the message back
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
};

class SignalingServer
{
public:
    SignalingServer(asio::io_context &ioc, tcp::endpoint endpoint)
        : acceptor_(ioc, endpoint)
    {
        accept();
    }

private:
    void accept()
    {
        acceptor_.async_accept([this](beast::error_code ec, tcp::socket socket)
                               {
            if (!ec) {
                std::cout << "New connection accepted" << std::endl;
                std::make_shared<Session>(std::move(socket))->start();
            }
            else {
                std::cerr << "Accept error: " << ec.message() << std::endl;
            }
            accept(); });
    }

    tcp::acceptor acceptor_;
};

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
