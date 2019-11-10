#ifndef ASYNC_H
#define ASYNC_H

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

class Async
{
public:
    Async();
    static void getAsyncKeyPress(char &actio);
    ~Async();

};

#endif // ASYNC_H
