hspeed_ = 0;
max_hspeed_ = 1.5;
vspeed_ = 0;
acceleration_ = 1;
friction_ = 1;
max_vspeed_ = 1.5;


/// map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);