#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#202020ff'  # default
T='#202020ff'  # text
W='#dcdcddbb'  # wrong
V='#3d95d3bb'  # verifying

bg_path="$(cat ~/.fehbg | sed '1d' | sed 's/feh\ --no-fehbg\ --bg-scale\ //' | sed "s/'//g")"
echo $bg_path
convert $bg_path -resize 1920x1080 /tmp/lock.jpg

mpc pause

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
-i /tmp/lock.jpg \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
