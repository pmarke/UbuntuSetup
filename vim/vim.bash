#!/bin/bash

# Remove vim-tiny if installed
sudo apt remove -y vim-tiny

# Update package list
sudo apt update 

# isntall full version of vim
sudo apt install -y vim