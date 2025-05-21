#!/bin/bash

# Step 1: Clean up any existing clone
rm -rf open-webui

# Step 2: Clone official Open WebUI
git clone https://github.com/open-webui/open-webui.git

# Step 3: Build your custom Docker image
cd open-webui
docker build -t open-web-raga .
