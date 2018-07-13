#include <iostream>
#include <fstream>
#include <time_funcs.h>

#include <vector>

#include <string>
#include "connection.h"


int main() {

    char* lines[] = {"command1 param1 param2 param3",
            "command2 param1",
            "command3",
            "command4 param1 param2",
            "command5 param1 param2"};

    std::vector<std::string> commands = {lines, lines+5};

    FileConnection* conn = new FileConnection();

    for(auto it = commands.begin(); it != commands.end(); it++){
        conn->send_message((*it));
        std::cout<<*it<<'\n';
        sleepcp(1000);
    }

//    std::istream* strm = conn->get_connection();
//    std::string line;
//
//    std::cout<<time(NULL)<<"\n";
//
//
//    if(conn->is_connected()){
//        while (std::getline (*strm, line) ){
//            std::cout<<line<<'\n';
////            sleepcp(500);
//        }
//    }else {
//        std::cout << "Unable to open file\n";}


    return 0;
}


