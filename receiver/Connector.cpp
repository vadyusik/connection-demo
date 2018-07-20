//
// Created by Алена on 13.07.2018.
//

#include "Connector.h"
//#include "connection.h"
using std::ifstream;

#ifdef _WIN32
const char* FILENAME = "..\\..\\input.txt";
#elif __linux__
const char* FILENAME = "../../input.txt";
#endif


Connection::~Connection(){
    delete stream;
}


FileConnection::FileConnection(){
    stream = new ifstream(FILENAME);
}


FileConnection::~FileConnection(){
    ((ifstream*)stream)->close();
}


istream* FileConnection::get_connection(){
    if (!((ifstream*)stream)->is_open()){
        if (stream != NULL){
            delete stream;
        }

        stream = new ifstream(FILENAME);

        if (!((ifstream*)stream)->is_open()){
            // TODO:RISE ERROR
            return stream;
        }
    }
    return stream;
}


bool FileConnection::is_connected(){
    return ((ifstream*)stream)->is_open();
}


bool FileConnection::commands_accepted(std::string report){
    ((ifstream*)stream)->close();

    std::ofstream ofs;
    ofs.open(FILENAME, std::ofstream::out | std::ofstream::trunc);
    ofs.close();

    return true;
}


bool FileConnection::send_message(){
    if (!((ifstream*)stream)->is_open()){
        if (stream != NULL){
            delete stream;
        }

        stream = new ifstream(FILENAME);

        if (!((ifstream*)stream)->is_open()){
            // TODO:RISE ERROR
            return false;
        }
    }

    return true;
}