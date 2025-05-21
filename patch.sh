#!/bin/bash

# Step 1: Clean up any existing clone
rm -rf open-webui

# Step 2: Clone official Open WebUI
git clone https://github.com/open-webui/open-webui.git

sed -i 's/FROM --platform=\$BUILDPLATFORM node/FROM node/' open-webui/Dockerfile

# Step 3: Build your custom Docker image
cd open-webui
docker build -t open-web-raga .
