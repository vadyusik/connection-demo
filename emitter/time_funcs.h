//
// Created by Алена on 13.07.2018.
//

#ifndef EMITTER_TIME_FUNCS_H
#define EMITTER_TIME_FUNCS_H

#include <time.h>
#ifdef WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif // win32

void sleepcp(int milliseconds){ // Cross-platform sleep function
#ifdef WIN32
    Sleep(milliseconds);
#else
    usleep(milliseconds * 1000);
#endif // win32
}

void wait_to_receive(){

}

#endif //EMITTER_TIME_FUNCS_H
