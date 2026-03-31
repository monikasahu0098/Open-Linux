#!/bin/bash
# Author: monikasahu0098 (204BEY10128)
# Purpose: Use 'read -p' to ask 3 interactive questions, construct a paragraph injecting the answers, and append it to a .txt file named after the user.

echo "================================================================================"
echo "                   VLC AUDIT - MANIFESTO GENERATOR         "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open-source software? " software
read -p "What do you think is the most important aspect of open-source software? " aspect

echo "As $name, I believe that $software is a great example of the power of open-source software. I think that the most important aspect of open-source software is $aspect. I will continue to support and contribute to the open-source community."

echo "As $name, I believe that $software is a great example of the power of open-source software. I think that the most important aspect of open-source software is $aspect. I will continue to support and contribute to the open-source community." > "$(whoami).txt"
echo "================================================================================"