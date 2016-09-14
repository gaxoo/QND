//Get player's Input
key_left = -keyboard_check(ord('A'));
key_right = keyboard_check(ord('D'));
key_jump = keyboard_check_pressed(ord('W'));
key_duck = keyboard_check(ord('S'));
key_attack = keyboard_check_pressed(vk_space);
key_power = keyboard_check(vk_shift);

//React to Input
move = key_left + key_right;
hsp = move * movespeed;

