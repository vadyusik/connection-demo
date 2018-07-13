#include <iostream>
#include <fstream>
#include <time.h>

#ifdef WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif // win32

#include <string>
#include "Connector.h"

void sleepcp(int milliseconds);

int main() {

    //    int ch;
//    while (true){
//        if ((ch = cin.get()) != EOF){
//            cout << (char)ch;
//        }
//        else{
//            usleep(3000000);
//            cout << "I'm awake..." << endl;
//            cin.clear();
//        }
//    }

    FileConnection* conn = new FileConnection();
    std::istream* strm = conn->get_connection();
    std::string line;

    while(true) {
        if (conn->is_connected()) {
            while (std::getline(*strm, line)) {
                std::cout << line << '\n';
            }
        } else {
            conn->commands_accepted("");
            sleepcp(1000);
        }
    }

    return 0;
}


void sleepcp(int milliseconds) // Cross-platform sleep function
{
#ifdef WIN32
    Sleep(milliseconds);
#else
    usleep(milliseconds * 1000);
#endif // win32
}