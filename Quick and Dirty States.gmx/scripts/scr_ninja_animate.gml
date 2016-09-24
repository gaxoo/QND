//Animate

if attacking = false{
    if (move!=0) image_xscale = move;
    if (place_meeting(x,y+1,obj_solid)) {
        if (hsp!=0) sprite_index = spr_player_ninja_run; else sprite_index = spr_player_ninja_idle;
        image_speed = .5;
    }
    else {
        if (vsp < 0) sprite_index = spr_player_ninja_jump; else sprite_index = spr_player_ninja_fall;
        image_speed = .2;
    }
}

if (key_attack){
    attacking = true;
    sprite_index = spr_player_ninja_slash;
    image_speed = 1;
    image_index = 0;
    alarm[0] = 3;
    
        if (image_index >= 0) || (image_index <= 2)
        {
            with (instance_create(x,y,obj_player_ninja_hitbox))
            {
                image_xscale = other.image_xscale;
                with (instance_place(x,y,obj_enemy))
                {
                    if (hit == 0)
                    {
                        hit = 1;
                        vsp = -3;
                        hsp = sign(x - other.x) * 4;
                        image_xscale = sign(hsp);
                    }
                }
            }
        }
}

