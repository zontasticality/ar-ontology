DIRECTORIES=(./data "$HOME/Repos/w_cosma/core")
DIRECTORY="./data "  # Relative path to the 'data' subdirectory
DIRECTORY2="$HOME/Repos/w_cosma"
COMMAND="cosma modelize"

inotifywait -m -r -e close_write --format '%w%f' "${DIRECTORIES[@]}" | while read MODIFIED
do
  echo "Change detected in $MODIFIED"
  cd $(dirname "$0")  # Change to the script's directory (assumed as the working directory)
  $COMMAND
done

