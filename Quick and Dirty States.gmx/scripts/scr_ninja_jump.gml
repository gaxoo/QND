scr_getinputs();

//Horizontal Collisions
if (place_meeting(x+hsp,y,obj_solid))
{
    while(!place_meeting(x+sign(hsp),y,obj_solid))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//Vertical Collisions
if (place_meeting(x,y+vsp,obj_solid))
{
    obj_cont_view.shake = vsp/2;
    while(!place_meeting(x,y+sign(vsp),obj_solid))
    {
        y += sign(vsp);
    }
    vsp = 0;
    state = states.ninja;
}

y += vsp;

if (vsp < 10) vsp += grav;

scr_ninja_animate();
