#!/bin/bash
# About: Bash script to create new Jekyll posts
# Author: @AamnahAkram
# URL: https://gist.github.com/aamnah/f89fca7906f66f6f6a12
# Description: This is a very basic version of the script

# VARIABLES
######################################################

# Get current working directory

# Define the post directory (where to create the file)
JEKYLL_POSTS_DIR=$HOME'/Sites/dev/ryanmalm/_posts/'

# Post title
TITLE=$1

# Replace spaces in title with underscores
TITLE_STRIPPED=${TITLE// /_}

# Permalink
PERMALINK=${TITLE_STRIPPED}

# Date
DATE=`date +%Y-%m-%d`

# Post Type (markdown, md, textile)
TYPE='.md'

# File name structure
FILENAME=${DATE}-${TITLE_STRIPPED}${TYPE}


# COMMANDS
#######################################################

# go to _posts directory
cd ${JEKYLL_POSTS_DIR}

# make a new post file
touch ${FILENAME}

# add YAML front matter
echo -e "
---
layout: post
title: ${TITLE}
permalink: ${PERMALINK}

---
" >> ${FILENAME}
