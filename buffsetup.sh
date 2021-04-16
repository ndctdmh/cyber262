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
echo "B.	Compile the program and make it privileged"
echo "Making sure you are in the “cyber262” directory"
cd ~/cyber262
echo "Compiling C program and changing the permissions"

sudo gcc stack.c -o stack -z execstack -fno-stack-protector
sudo chown root stack
sudo chmod 4755 stack
#
echo " C.	Turn off the address randomization and relink shell"

sudo sysctl -w kernel.randomize_va_space=0
sudo rm /bin/sh
sudo ln -s /bin/zsh  /bin/sh
echo "DONE, you need to touch badfile and run stack etc ..."

