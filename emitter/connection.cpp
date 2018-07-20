#include "connection.h"


using std::ifstream;
using std::ofstream;

#ifdef _WIN32
const char* FILENAME = "..\\..\\input.txt";
#elif __linux__
const char* FILENAME = "../../input.txt";
#endif



Connection::~Connection(){
    if (i_stream != NULL){  delete i_stream;}
}


FileConnection::FileConnection(){
//    i_stream = new ifstream(FILENAME);
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
        i_stream = new ifstream(FILENAME);

        if (!((ifstream*)i_stream)->is_open()){
            return false;
        }
    }

    return true;
}


bool FileConnection::commands_accepted(std::string report){
    ((ifstream*)i_stream)->close();
    ofstream ofs;
    ofs.open(FILENAME, std::ofstream::out | std::ofstream::trunc);
    ofs.close();
    return true;
}


bool FileConnection::send_message(std::string message){

    //      "..\\input.txt"
    ofstream o_stream(FILENAME, std::ofstream::app);
//    ofstream o_stream(FILENAME, std::ofstream::out | std::ofstream::trunc);

//    open ;

    if (o_stream.is_open()) {
        o_stream<<message<<"\n";
        std::cout<<message<<"\n";

        o_stream.close();
    }else{
        // rise error
        return false;
    }

//    if (!((ifstream*)i_stream)->is_open()) {
//        return false;
//    }

    return true;
}