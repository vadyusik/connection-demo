//
// Created by Алена on 13.07.2018.
//

#include "Connector.h"
//#include "connection.h"
using std::ifstream;


Connection::~Connection(){
    delete stream;
}


FileConnection::FileConnection(){
    stream = new ifstream("..\\example.txt");
}


FileConnection::~FileConnection(){
    ((ifstream*)stream)->close();
}


istream* FileConnection::get_connection(){
    if (!((ifstream*)stream)->is_open()){

//        RISE ERROR
    }
    return stream;
}


bool FileConnection::is_connected(){
    if (!((ifstream*)stream)->is_open()){
        if (stream != NULL){
            delete stream;
        }
//        cmake-build-debug
        stream = new ifstream("..\\..\\input.txt");
//        stream = new ifstream("..\\input.txt");

        if (!((ifstream*)stream)->is_open()){
            return false;
        }
    }

    return true;
}


bool FileConnection::commands_accepted(std::string report){
    ((ifstream*)stream)->close();
    return true;
}


bool FileConnection::send_message(){
    return true;
}