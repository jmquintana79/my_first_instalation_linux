#!/bin/bash
# Download the latest shell script
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# Make the miniconda installation script executable
chmod +x Miniconda3-latest-Linux-x86_64.sh
# Run miniconda installation script
./Miniconda3-latest-Linux-x86_64.sh
# Remove the miniconda instalation script executable
rm -rf  Miniconda3-latest-Linux-x86_64.sh
