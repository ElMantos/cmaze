#include "Player.h"

Player::Player()
{
}

int Player::get_health()
{
    return this->health;
}

int Player::get_coins()
{
    return this->coins;
}

int Player::get_exp()
{
    return this->exp;
}

bool Player::is_alive()
{
    return this->health > 0;
}

void Player::take_damage(int damage)
{
    this->health -= damage;
}

void Player::add_coins(int coins)
{
    this->coins += coins;
}

Player::~Player()
{
}
