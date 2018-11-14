///MOVEMENT CODE
///HORIZONTAL MOVEMENT CODE

#region
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	image_xscale = hinput
	sprite_index = Viking_1_walk;
	hspeed_ += hinput*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);	
	sprite_index = Viking_1_idle
	image_speed = .5
}



#endregion

///VERTICALL MOVEMENT CODE

#region
var vinput = keyboard_check(vk_down) - keyboard_check(vk_up);

if vinput != 0 {
	sprite_index = Viking_1_walk;
	vspeed_ += vinput*acceleration_;
	vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);
} else {
	vspeed_ = lerp(vspeed_, 0, friction_);	
	
}


#endregion

///collision

#region


if place_meeting(x+hspeed_, y, wall1) {
	while !place_meeting(x+sign(hspeed_) , y, wall1) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;




if place_meeting(x, y+vspeed_, wall1) {
	 while !place_meeting(x, y+sign(vspeed_), wall1) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;



#endregion