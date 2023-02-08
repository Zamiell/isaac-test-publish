#!/bin/bash

set -e # Exit on any errors

# Get the directory of this script:
# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR"

git pull --rebase

GIT_STATUS=$(git status --short)
if [ ! -z "$GIT_STATUS" ]; then
  echo "Error: The current working directory must be clean before releasing a new version. Please push your changes to Git."
  exit 1
fi

python "$DIR/release.py"
