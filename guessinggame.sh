#!/bin/bash
count_files() {
  local num_files=$(ls -l | grep "^-" | wc -l)
  echo $num_files
}

# Main game loop
while true; do
  echo "Guess the number of files in the current directory:"
  read user_guess

  correct_count=$(count_files)

  if [[ $user_guess -lt $correct_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed correctly. There are $correct_count files in the directory."
    break
  fi
done
