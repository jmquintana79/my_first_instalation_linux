#!/bin/bash

# go to workspace/projects
cd ~/Workspace/projects
# git clone anaconda environments
git clone https://github.com/jmquintana79/anaconda_env.git

# git clone anaconda environments
git clone https://github.com/jmquintana79/projects_manager.git
# copy content
cp ~/Workspace/projects/projects_manager/Makefile ~/Workspace/Makefile
cp -r ~/Workspace/projects/projects_manager/.templates ~/Workspace/.templates
cp -r ~/Workspace/projects/projects_manager/.scripts ~/Workspace/.scripts

# close
echo "run github repositories"

