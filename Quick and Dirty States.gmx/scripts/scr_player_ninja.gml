scr_getinputs();
scr_collideandmove();

//React to Input
move = key_left + key_right;
hsp = move * movespeed;

if (place_meeting(x,y+1,obj_solid)) {
    if (key_jump) {
        vsp = -jumpspeed;
        state = states.ninja_jump;
    }
}
else {
    state = states.ninja_jump;
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

scr_ninja_animate();

if ((key_power) && !place_meeting(x,y,obj_balloon) && cooldown == 0)
{
    cooldown = 30;
    state = states.normal;
    instance_create(x,y,obj_sword);
    exit;
}

if (key_power) && place_meeting(x,y,obj_balloon)
{
    instance_change(obj_player_float,true);
    instance_create(x,y,obj_sword);
    exit;
}


