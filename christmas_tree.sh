#!/bin/bash

# Define the height of the tree
height=15

# Draw the tree's body
for ((i = 1; i <= height; i++)); do
  # Print spaces to center the tree
  for ((j = i; j < height; j++)); do
    echo -n " "
  done

  # Print the leaves of the tree
  for ((j = 1; j <= (2 * i - 1); j++)); do
    if ((RANDOM % 10 < 2)); then
      # Randomly add a star for decoration
      echo -n "*"
    else
      # Print the tree's main structure
      echo -n "#"
    fi
  done

  # Move to the next line after completing a row
  echo
done

# Draw the trunk of the tree
for ((i = 1; i <= 3; i++)); do
  # Print spaces to align the trunk
  for ((j = 1; j < height - 2; j++)); do
    echo -n " "
  done
  # Print the trunk
  echo "###"
done

# Add a holiday message
for ((j = 1; j <= height - 6; j++)); do
  echo -n " "
done
echo "Merry Christmas!"
