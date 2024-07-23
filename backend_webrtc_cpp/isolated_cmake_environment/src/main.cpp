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

class Session : public std::enable_shared_from_this<Session> {
public:
    Session(tcp::socket socket)
        : ws_(std::move(socket)) {}

    void start() {
        ws_.async_accept([self = shared_from_this()](beast::error_code ec) {
            self->on_accept(ec);
        });
    }

private:
    void on_accept(beast::error_code ec) {
        if (ec) {
            std::cerr << "Accept error: " << ec.message() << std::endl;
            return;
        }
        do_read();
    }

    void do_read() {
        ws_.async_read(buffer_, [self = shared_from_this()](beast::error_code ec, std::size_t bytes_transferred) {
            self->on_read(ec, bytes_transferred);
        });
    }

    void on_read(beast::error_code ec, std::size_t bytes_transferred) {
        if (ec == websocket::error::closed) {
            return;
        }
        if (ec) {
            std::cerr << "Read error: " << ec.message() << std::endl;
            return;
        }

        // Handle the signaling message (e.g., offer, answer, ICE candidates)
        std::string message = beast::buffers_to_string(buffer_.data());
        std::cout << "Received message: " << message << std::endl;

        buffer_.consume(bytes_transferred);

        // Echo the message back for testing purposes
        do_write(message);
        do_read();
    }

    void do_write(const std::string& message) {
        ws_.async_write(asio::buffer(message), [self = shared_from_this()](beast::error_code ec, std::size_t bytes_transferred) {
            self->on_write(ec, bytes_transferred);
        });
    }

    void on_write(beast::error_code ec, std::size_t bytes_transferred) {
        if (ec) {
            std::cerr << "Write error: " << ec.message() << std::endl;
        }
    }

    websocket_stream ws_;
    beast::flat_buffer buffer_;
};

class SignalingServer {
public:
    SignalingServer(asio::io_context& ioc, tcp::endpoint endpoint)
        : acceptor_(ioc, endpoint) {
        accept();
    }

private:
    void accept() {
        acceptor_.async_accept([this](beast::error_code ec, tcp::socket socket) {
            if (!ec) {
                std::make_shared<Session>(std::move(socket))->start();
            }
            accept();
        });
    }

    tcp::acceptor acceptor_;
};

int main() {
    try {
        asio::io_context ioc;
        tcp::endpoint endpoint(tcp::v4(), 8080);
        SignalingServer server(ioc, endpoint);
        ioc.run();
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }
    return 0;
}
