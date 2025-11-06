#! /bin/bash

# --- Configuration ---
# The source directory in your repository where your config files are stored.
# This assumes the script is run from the root of your repo.
SOURCE_DIR=".config"

# The target directory for the symlinks (typically ~/.config)
TARGET_BASE="$HOME/.config"

# --- Main Logic ---

echo "Starting symlink creation..."
echo "Source: $(pwd)/$SOURCE_DIR/"
echo "Target: $TARGET_BASE/"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' not found."
    echo "Please check the 'SOURCE_DIR' variable or run the script from the correct location."
    exit 1
fi

# Ensure the target base directory exists
if [ ! -d "$TARGET_BASE" ]; then
    echo "Creating target directory: $TARGET_BASE"
    mkdir -p "$TARGET_BASE"
fi

# Loop through all items (files and directories) in the source directory
for item in "$SOURCE_DIR"/*; do
    # Get the basename (just the file/folder name)
    ITEM_NAME=$(basename "$item")
    
    # Define the target path for the symlink
    TARGET_PATH="$TARGET_BASE/$ITEM_NAME"
    
    # Check if the target path already exists (and is not a symlink)
    if [ -e "$TARGET_PATH" ] && [ ! -L "$TARGET_PATH" ]; then
        echo "⚠️  Conflict: '$TARGET_PATH' exists and is NOT a symlink. Skipping."
        # You might want to backup or delete the existing file here, but for safety, we skip.
        continue
    fi
    
    # Check if a symlink already exists and remove it to create a new one
    if [ -L "$TARGET_PATH" ]; then
        echo "🔄 Existing symlink found for '$ITEM_NAME'. Removing old link..."
        rm "$TARGET_PATH"
    fi

    # Create the new symbolic link
    # '-s' for symbolic, '-f' to force (though we removed the old one), 
    # and we use absolute paths for reliability.
    echo "🔗 Creating symlink: $ITEM_NAME"
    ln -s "$(realpath "$item")" "$TARGET_PATH"
done

echo "---"
echo "✅ Symlink creation complete."
