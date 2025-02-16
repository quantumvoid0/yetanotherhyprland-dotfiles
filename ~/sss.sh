# THIS SCRIPT IS TO TAKE FULL SCREEN PICTURES AND SAVE IT 
SAVE_DIR="/run/media/stuff/pictures"
BASENAME="img"
EXTENSION=".png"

# Find the next available number
n=1
while [[ -e "$SAVE_DIR/$BASENAME$n$EXTENSION" ]]; do
  ((n++))
done

# Capture fullscreen screenshot, save, and copy to clipboard
FILE_PATH="$SAVE_DIR/$BASENAME$n$EXTENSION"
grim "$FILE_PATH" && cat "$FILE_PATH" | wl-copy

echo "Screenshot saved as $BASENAME$n$EXTENSION and copied to clipboard."

