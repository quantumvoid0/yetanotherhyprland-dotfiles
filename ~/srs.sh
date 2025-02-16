# THIS SCRIPT IS TO TAKE REGION SCREENSHOT AND SAVE 
SAVE_DIR="/run/media/stuff/pictures"
BASENAME="img"
EXTENSION=".png"

# Find the next available number
n=1
while [[ -e "$SAVE_DIR/$BASENAME$n$EXTENSION" ]]; do
  ((n++))
done

# Select region and capture
FILE_PATH="$SAVE_DIR/$BASENAME$n$EXTENSION"

# Capture the region and save, then copy to clipboard
grim -g "$(slurp)" "$FILE_PATH" && cat "$FILE_PATH" | wl-copy

echo "Screenshot saved as $BASENAME$n$EXTENSION and copied to clipboard."

