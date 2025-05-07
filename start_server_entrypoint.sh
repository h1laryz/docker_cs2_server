#!/bin/bash

echo "/home/container/cs2/game/bin/linuxsteamrt64/cs2 \
    -dedicated \
    -console \
    -usercon \
    -port 27015 \
    +map $KILLAURA_CS2_DEFAULT_MAP \
    +game_type $KILLAURA_CS2_GAME_TYPE +game_mode $KILLAURA_CS2_GAME_MODE \
    $KILLAURA_CS2_LAUNCH_PARAMS"

/home/container/cs2/game/bin/linuxsteamrt64/cs2 \
    -dedicated \
    -console \
    -usercon \
    -port 27015 \
    +map $KILLAURA_CS2_DEFAULT_MAP \
    +game_type $KILLAURA_CS2_GAME_TYPE +game_mode $KILLAURA_CS2_GAME_MODE \
    $KILLAURA_CS2_LAUNCH_PARAMS
