#!/bin/bash

# Create a local bin directory if it doesn't exist
LOCAL_BIN="$HOME/.local/bin"
mkdir -p "$LOCAL_BIN"

# Copy the script to the local bin directory and make it executable
cp fastmap "$LOCAL_BIN/fastmap"
chmod +x "$LOCAL_BIN/fastmap"

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$LOCAL_BIN:"* ]]; then
    echo "Adding $LOCAL_BIN to PATH..."
    
    # Detect the shell and add to appropriate config file
    if [ -n "$ZSH_VERSION" ] || [ "$SHELL" = "/bin/zsh" ] || [ "$SHELL" = "/usr/bin/zsh" ]; then
        # User is using zsh
        if [ -f "$HOME/.zshrc" ]; then
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
            SHELL_FILE="~/.zshrc"
        else
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.profile"
            SHELL_FILE="~/.profile"
        fi
    elif [ -f "$HOME/.bashrc" ]; then
        # User is using bash
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
        SHELL_FILE="~/.bashrc"
    else
        # Fallback to .profile
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.profile"
        SHELL_FILE="~/.profile"
    fi
    
    echo "fastmap has been successfully installed to $LOCAL_BIN"
    echo "Please run 'source $SHELL_FILE' or restart your terminal to use fastmap globally."
else
    echo "fastmap has been successfully installed and is ready to use."
fi
