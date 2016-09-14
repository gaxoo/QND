scr_getinputs();
scr_collideandmove();


//React to Input
if (place_meeting(x,y+1,obj_solid))
{
    if (key_jump) {
        vsp = -jumpspeed;
        state = states.jumping;
    }
}
else
{
    state = states.jumping;
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;


if (key_power) && (place_meeting(x,y,obj_sword))
{
    hsp = 0;
    vsp = 0;
    instance_change(obj_player_ninja,true);
}
if (key_power) && (place_meeting(x,y,obj_balloon))
{
    hsp = 0;
    vsp = 0;
    instance_change(obj_player_float,true);
}

scr_animate();
