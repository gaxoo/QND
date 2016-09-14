scr_getinputs();

if (key_attack){
    sprite_index = spr_player_shove;
    image_speed = .2;
    
        if (image_index = 0) || (image_index = 1)
        {
            with (instance_create(x,y,obj_player_hitbox))
            {
                image_xscale = other.image_xscale;
                with (instance_place(x,y,obj_goo))
                {
                    if (hit == 0)
                    {
                        hit = 1;
                        vsp = -3;
                        hsp = (x - other.x) * 4;
                        image_xscale = sign(hsp);
                    }
                }
            }
        }
}
