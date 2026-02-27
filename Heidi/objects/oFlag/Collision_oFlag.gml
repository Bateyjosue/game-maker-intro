// only trigger once
if (finished) exit;

finished = true;

// (A) play sound once (replace snd_finish with your sound asset name)
audio_play_sound(snd_finish, 1, false);

// (B) start flag animation (replace spr_flag_finish with your animated sprite)
sprite_index = spr_flag_finish;
image_index = 0;
image_speed = 1;

// (C) freeze player movement + stop input by putting player in a "finished" state
other.finished = true;
other.x_speed = 0;
other.y_speed = 0;

// optional: stop the player animation on last frame / idle
// other.image_speed = 0;

// optional: you can also disable gravity on the player if you want:
// other.grav = 0;