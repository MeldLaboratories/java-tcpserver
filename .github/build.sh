#!/bin/bash

# This script will run the build.

echo "Installing Maven..."
sudo apt install maven -y

echo "Preparing Maven..."
mkdir -p ~/.m2
echo "<settings><servers><server><id>meldlabs</id><username>meldlabs</username><password>${env.NEXUS_PASS}</password></server></servers></settings>" > ~/.m2/settings.xml

echo "Installing Keystore..."
mkdir -p .github/cert
echo -n | openssl s_client -connect ns.meldlabs.xyz:443 -servername meldlabs | openssl x509 > .github/cert/meldlabs.cert
sudo keytool -importcert -file .github/cert/meldlabs.cert -alias meldlabs -storepass changeit -cacerts -noprompt

echo "Deploying..."
mvn deploy