#!/bin/sh
#
# This script will help automate some early tasks
#
# ==============================================
#
echo "This script will run some of the setup for buffer the famous overflow lab."
echo "See the code for details."
echo "Press ENTER to continue or ctrl-C to exit"
read input
#
echo "Compiling stack.c and changind permissions"
sudo gcc stack.c -o stack -z execstack -fno-stack-protector
sudo chown root stack
sudo chmod 4755 stack
