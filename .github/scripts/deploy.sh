#!/bin/bash

# This script will run the build.

echo "Installing Maven..."
sudo apt update
sudo apt install maven -y

echo "Preparing Maven..."
mkdir -p ~/.m2
echo "<settings><servers><server><id>meldlabs</id><username>meldlabs</username><password>$NEXUS_PASS</password></server></servers></settings>" > ~/.m2/settings.xml

echo "Deploying..."
mvn deploy \
    -Dmaven.wagon.http.ssl.insecure=true \
    -Dmaven.wagon.http.ssl.allowall=true \
    -Dmaven.wagon.http.ssl.ignore.validity.dates=true