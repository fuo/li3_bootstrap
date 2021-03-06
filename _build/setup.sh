#!/bin/bash

echo ""
echo "Setting application directory permissions..."
chmod -R 777 resources
chmod -R 775 config/bootstrap/libraries
chmod -R 775 config/bootstrap/connections
echo ""

echo ""
echo "Getting all necessary submodules..."
git submodule update --init --recursive
echo ""

echo ""
echo "Creating a symlink for core assets..."
(cd webroot && ln -s ../libraries/li3b_core/webroot li3b_core)
echo ""

echo ""
echo "Creating a symlink to li3 for you..."
chmod +x libraries/lithium/console/li3
ln -s libraries/lithium/console/li3 li3
alias li3='./li3'
echo ""

echo ""
echo "Installation the core bootstrap complete!"
echo "Starting to intall the plugins..."