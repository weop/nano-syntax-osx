#!/bin/bash
#### Description: Generates nano default configuration file ~/.nanorc with syntax highlighting
#### Changed: Functions that don't work by default on OSX like formatter, linting etc. have been disabled
#### Author: weop@github

if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.nanorc_bak
    echo "Moved current ~/.nanorc to ~/.nanorc_bak"
fi

echo "Copying files..."
cp -Rf .nanosyntax ~/

echo "Generating new ~/.nanorc"
for file in ~/.nanosyntax/*; do
  echo "include \"$file\"" >> ~/.nanorc
done

echo "Done."
