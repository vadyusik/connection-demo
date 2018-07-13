#ifndef CONNECTION_H
#define CONNECTION_H

#include "iostream"
#include <fstream>

using std::istream;
using std::ostream;


class Connection
{
public:

    istream* i_stream = NULL;

public:
    Connection(){};

    virtual ~Connection();


    virtual istream* get_connection()=0;

    virtual bool is_connected()=0;

    virtual bool send_message(std::string message)=0;

    virtual bool commands_accepted(std::string report)=0;

};


class FileConnection: public Connection{
public:
    FileConnection();
    ~FileConnection();

    virtual istream* get_connection();

    virtual bool is_connected();

    virtual bool send_message(std::string message);

    virtual bool commands_accepted(std::string report);

};

//class SocketConnection
//{
//public:
//    SocketConnection() {}
//};
//http://www.technical-recipes.com/2014/getting-started-with-client-server-applications-in-c/
//https://www.codeproject.com/Articles/13071/Programming-Windows-TCP-Sockets-in-C-for-the-Begin


#endif // CONNECTION_H
