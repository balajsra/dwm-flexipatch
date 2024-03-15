set shell := ["bash", "-c"]

# List just commands by default
default:
    @just --list

# Update doom emacs and sync config
dwm-rebuild:
    sudo make clean install

# Run polybar launch script
dwm-launch-polybar:
    ./polybar/launch.sh
