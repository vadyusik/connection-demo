#include "connection.h"


using std::ifstream;
using std::ofstream;


Connection::~Connection(){
    if (i_stream != NULL){  delete i_stream;}
}


FileConnection::FileConnection(){
    i_stream = new ifstream("..\\..\\input.txt");
}


FileConnection::~FileConnection(){
    ((ifstream*)i_stream)->close();
}


istream* FileConnection::get_connection(){
    if (!((ifstream*)i_stream)->is_open()){

//        RISE ERROR
    }
    return i_stream;
}


bool FileConnection::is_connected(){
    if (!((ifstream*)i_stream)->is_open()){
        if (i_stream != NULL){
            delete i_stream;
        }
//        cmake-build-debug
        i_stream = new ifstream("..\\..\\input.txt");
//      i_stream = new ifstream("..\\input.txt");

        if (!((ifstream*)i_stream)->is_open()){
            return false;
        }
    }

    return true;
}


bool FileConnection::commands_accepted(std::string report){
    ((ifstream*)i_stream)->close();
    return true;
}


bool FileConnection::send_message(std::string message){

    //      "..\\input.txt"
    ofstream o_stream("..\\..\\input.txt");

    if (o_stream.is_open()) {
        o_stream<<"asd";
        o_stream.close();
    }else{
        // rise error
        return false;
    }

    if (!((ifstream*)i_stream)->is_open()) {
        return false;
    }

    return true;
}