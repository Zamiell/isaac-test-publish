#!/bin/bash

# Check for Windows-style line endings.
WINDOWS_FILES=$(
  grep \
  --recursive \
  --files-with-matches \
  --binary \
  --perl-regexp \
  --exclude-dir='.git' \
  --exclude-dir='node_modules' \
  --exclude-dir='rooms' \
  --exclude-dir='pre-flipped' \
  --exclude='*.fnt' \
  --exclude='*.png' \
  --exclude='*.pyc' \
  --exclude='*.stb' \
  --exclude='*.ttf' \
  --exclude='*.wav' \
  --exclude='*.jpg' \
  --exclude='yarn.lock' \
  '\r$' .
) || true
if [[ $WINDOWS_FILES ]]; then
  echo "Files with Windows line-endings were found:"
  echo "$WINDOWS_FILES"
  exit 1
fi
