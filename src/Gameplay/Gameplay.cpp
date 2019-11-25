#include "Gameplay.h"

Gameplay::Gameplay()
{
}

bool Gameplay::is_game_running()
{
    if(!this->player->is_alive()) {
        return false;
    }
    return !this->is_game_won;
}

bool Gameplay::can_move_object(char expected_tile)
{
    return expected_tile == this->empty_space || expected_tile == this->traps;
}

void Gameplay::move(int horizontal, int vertical)
{
    int move_horizontal {this->x + horizontal};
    int move_vertical {this->y + vertical};

    int next_move_horizontal {move_horizontal + horizontal};
    int next_move_vertical {move_vertical + vertical};

    char map_coordinate = map[move_horizontal][move_vertical];

    if(map_coordinate == this->moveable_object) {

        if(this->can_move_object(this->map[next_move_horizontal][next_move_vertical])) {
            map_coordinate = ' ';
            this->map[next_move_horizontal][next_move_vertical] = this->moveable_object;
        }

    }

    if(map_coordinate == this->traps) {
        map_coordinate = this->empty_space;
        this->player->take_damage(10);
    }


    if(map_coordinate == 'o') {
        map_coordinate = this->empty_space;
        this->player->add_coins(1);
    }

    if(map_coordinate == this->empty_space) {
        this->map[this->x][this->y] = this->empty_space;
        this->x = move_horizontal;
        this->y = move_vertical;
        this->map[this->x][this->y] = '@';
    }

    if(map_coordinate == 'E') {
        this->is_game_won = true;
    }
}

void Gameplay::loop()
{
    this->player = new Player;

    xString::print("Welcome to The Maze!");
    xString::print("Your goal is to reach the end of the maze!");
    xString::print("(it's marked as E)");

    sleep(1);
    char action;

    while(this->is_game_running()) {
        system("clear");
        this->print_map();
        this->print_hud();
        Async::getAsyncKeyPress(action);

        if(action == 'A') {
            this->move(-1, 0);
        }

        if(action == 'B') {
            this->move(1, 0);
        }

        if(action == 'C') {
            this->move(0,1);
        }

        if(action == 'D') {
            this->move(0, -1);
        }

    }

    this->print_end_game_text();

//    String::print("Loop done");
}

void Gameplay::print_success()
{
    xString::print("Success!");
    xString::print("You have reached the end of the maze!");
}

void Gameplay::print_map()
{
    for(int i = 0; i <= 26; i++) {
        xString::print(this->map[i]);
    }
}

void Gameplay::print_hud()
{
    xString::print("________________");
    std::cout << "| Health: " << this->player->get_health() << std::endl;
    std::cout << "| Coins: " << this->player->get_coins() << std::endl;
    std::cout << "| Exp: " << this->player->get_exp() << std::endl;
}

void Gameplay::print_end_game_text()
{
    if(this->is_game_won) {
        xString::print("You found the exit!");
        xString::print("Good job!");
    }

    if(!this->player->is_alive()) {
        xString::print("You are dead!");
        xString::print("Be more carefull next time!");
    }
}


Gameplay::~Gameplay()
{
}
