***This file contains some of the longer commands that will be used in the Buffer Overflow Lab of CYBER 262; Instructor: David Hozza***





sudo gcc stack.c -o stack -z execstack -fno-stack-protector



sudo sysctl -w kernel.randomize_va_space=0



sudo rm /bin/sh



sudo ln -s /bin/zsh /bin/sh


sudo gcc stack.c -o stack_gdb -g -z execstack -fno-stack-protector
