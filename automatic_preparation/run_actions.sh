#!/bin/bash

# create workspace
mkdir $HOME/Workspace
mkdir $HOME/Workspace/projects
mkdir $HOME/Workspace/data
# download necessary github repositories
bash github_repositories.sh

# close
echo "run actions done"

