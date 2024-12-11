#!/bin/bash

# Define the height of the tree
height=15

# Function to draw the Christmas tree
draw_tree() {
  for ((i = 1; i <= height; i++)); do
    # Print spaces for alignment
    for ((j = i; j < height; j++)); do
      echo -n " "
    done

    # Print the tree's leaves
    for ((j = 1; j <= (2 * i - 1); j++)); do
      rand=$((RANDOM % 10))
      if ((rand < 2)); then
        # Randomly add blinking stars with different colors
        color=$((31 + RANDOM % 6))  # Colors: red, green, yellow, blue, magenta, cyan
        echo -ne "\033[1;${color}m*\033[0m"
      else
        echo -n "#"
      fi
    done

    echo
  done

  # Draw the tree's trunk
  for ((i = 1; i <= 3; i++)); do
    for ((j = 1; j < height - 2; j++)); do
      echo -n " "
    done
    echo -e "\033[0;33m###\033[0m"  # Trunk color: yellow
  done

  # Print a holiday message
  for ((j = 1; j <= height - 6; j++)); do
    echo -n " "
  done
  echo -e "\033[1;32mMerry Christmas!\033[0m"  # Message color: green
}

# Infinite loop to create a blinking effect
while true; do
  clear  # Clear the screen
  draw_tree  # Redraw the tree
  sleep 0.5  # Delay to create the blinking effect
done
