#!/bin/bash

# Define the source and target directories
SOURCE_DIR="/Users/pauln/Documents/GitHub/port/dist"
TARGET_DIR="/Users/pauln/Documents/GitHub/pnaylor.github.io"

# Remove the contents of the target directory
rm -rf "$TARGET_DIR"/*

# Copy the contents of the source directory to the target directory
cp -r "$SOURCE_DIR"/* "$TARGET_DIR"/