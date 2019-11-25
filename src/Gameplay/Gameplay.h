#ifndef __GAMEPLAY_H_
#define __GAMEPLAY_H_

#include <string>

#include "src/functions/String/xString.h"
#include "src/functions/Async/Async.h"
#include "src/Player/Player.h"

class Gameplay
{
private:

    Player *player {nullptr};

    int x {1};
    int y {1};

    const char moveable_object {'H'};
    const char empty_space {' '};
    const char traps {'-'};

    bool is_game_won {false};

    char current_map [500][500] {""};

    char map[27][500] {
        "###########               #############",
        "#@        #               #ooooooooooo#",
        "#         #               #           #",
        "#    o    #################-----------#",
        "#                H                     #",
        "#         #################             ###############",
        "# o       #               #   o                        #",
        "#         #              #o             #############  #",
        "#      o  #              #o     o       #           #  #",
        "#         #               #         o  #            #  #",
        "#####################################################  #",
        "#                                                      #",
        "# H                                                    #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#                                                      #",
        "#------------------------------------------------------#",
        "#------------------------------------------------------#",
        "#------------------------------------------------------#",
        "#                                                      #",
        "#########################E##############################"
    };

    bool is_game_running();
    void print_success();
    void print_hud();
    bool can_move_object(char);
public:
    Gameplay();
    void print_end_game_text();
    void loop();
    void move(int horizontal, int vertical);
    void print_map();
    ~Gameplay();

};

#endif // __GAMEPLAY_H_
