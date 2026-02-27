if (finished) {
    finish_delay -= 1;

    if (finish_delay <= 0) {
        // Go to next room (change this to what you want)
        if (room_next(room) != -1) {
            room_goto_next();
        } else {
            // if there is no next room, restart or go to a win room
            room_restart();
        }
    }
}