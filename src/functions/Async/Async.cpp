#include "Async.h"

Async::Async()
{
}

void Async::getAsyncKeyPress(char &action)
{
    struct termios oldSettings, newSettings;

    tcgetattr( fileno( stdin ), &oldSettings );
    newSettings = oldSettings;
    newSettings.c_lflag &= (~ICANON & ~ECHO);
    tcsetattr( fileno( stdin ), TCSANOW, &newSettings );
    fd_set set;
    struct timeval tv;

    tv.tv_sec = 10;
    tv.tv_usec = 0;

    FD_ZERO( &set );
    FD_SET( fileno( stdin ), &set );

    int res = select( fileno( stdin )+1, &set, NULL, NULL, &tv );

    read( fileno( stdin ), &action, 1 );
    std::cout << action << std::endl;

    tcsetattr( fileno( stdin ), TCSANOW, &oldSettings );
}

Async::~Async()
{
}
