#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <project-type> <destination-path>"
    echo "Example: $0 rails ~/my-new-project"
    exit 1
fi

PROJECT_TYPE=$1
DEST_PATH=$2

# Check if project type exists
if [ ! -d "../$PROJECT_TYPE" ]; then
    echo "Error: Project type '$PROJECT_TYPE' not found"
    echo "Available types: $(find .. -maxdepth 1 -type d -not -name '.*' -not -name '..' -printf '%f\n')"
    exit 1
fi

# Check if destination exists
if [ ! -d "$DEST_PATH" ]; then
    echo "Error: Destination path '$DEST_PATH' does not exist"
    exit 1
fi

# Copy the basic rules file
if [ -f "../$PROJECT_TYPE/basic.cursorrules" ]; then
    cp "../$PROJECT_TYPE/basic.cursorrules" "$DEST_PATH/.cursorrules"
    echo "Successfully copied $PROJECT_TYPE rules to $DEST_PATH/.cursorrules"
else
    echo "Error: No basic.cursorrules found for $PROJECT_TYPE"
    exit 1
fi 