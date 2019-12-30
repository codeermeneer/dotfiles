#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#047ed6cc'  # default
T='#00497eee'  # text
W='#828092bb'  # wrong
V='#3d95d3bb'  # verifying

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
-i ~/Pictures/walls/asdf/1080.png \
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
