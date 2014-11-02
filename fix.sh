#!/bin/sh

MISTAKE_1="Delphi"
MISTAKE_2="DelphiTests"
MISTAKE_3="Delphi.xcodeproj"

echo "\nWelcome to LEUPG. For a safer liberal shit on the can!"

if [ -d "$MISTAKE_1" ]; then
    echo "\nOne does not simply call something Delphi"
    mv $MISTAKE_1 "Mistake1"
fi
if [ -d "$MISTAKE_2" ]; then
    echo "\nSeriously ? Delphi..."
    mv $MISTAKE_2 "Mistake1Tests"
fi
if [ -d "$MISTAKE_3" ]; then
    echo "\nI'll delphinately fix this"
    mv $MISTAKE_3 "Mistake3.xcodeproj"
fi

echo "\nYou're free now. Frodo!"
