#include <iostream>
#include <fstream>
#include <time_funcs.h>

#include <vector>

#include <string>
#include "connection.h"


int main() {

//    char* lines[] = {"command1 param1 param2 param3",
//            "command2 param1",
//            "command3",
//            "command4 param1 param2",
//            "command5 param1 param2"};
//
//    std::vector<std::string> commands = {lines, lines+5};
//
//
//    for(auto it = commands.begin(); it != commands.end(); it++){
//        conn->send_message((*it));
//        sleepcp(5000);
//    }


    std::string line;
    FileConnection* conn = new FileConnection();

    while(getline(std::cin, line)){
        conn->send_message((line));
    }

    return 0;
}


