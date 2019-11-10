#ifndef _PLAYER_H_
#define _PLAYER_H_

class Player
{

private:
    int health {100};
    int coins {0};
    int exp {0};
public:
    Player();
    int get_health();
    int get_coins();
    int get_exp();
    void add_coins(int coins);
    void take_damage(int damage);
    bool is_alive();
    ~Player();

};

#endif // _PLAYER_H_
