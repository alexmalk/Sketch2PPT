#!/bin/bash
    echo ""

# Permission script & change directory...
    # sudo chmod 755 "${BASH_SOURCE[0]}"
    cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../

# Pull changes & check status...
    echo "↓ Pulling..."
    git pull
    git status

# Stage & commit changes...
    read -n 1 -s -r -p "Stage & commit changes? (Press any key)" && echo ""
    git add .
    echo "✓ Committed" && echo ""
    echo "Enter commit message: " && read commitmsg && echo ""
    git commit -m "$commitmsg"
    echo ""

# Push changes...
    echo "↑ Pushing..."
    git push
    echo "" && echo "✓ Done" && echo ""

# Open project URL...
    # read -p "Press enter to open project URL..."
    # open http://aka.ms/calcdesign
    # echo ""

exit;
