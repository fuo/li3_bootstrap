#!/bin/bash

echo ""
echo "Welcome to Lithium Bootstrap!"
echo "----------------------------------"
echo ""
echo "Starting the installation process, hold on to your butts..."
echo ""

git clone git://github.com/fuo/li3_bootstrap.git .

./_build/setup.sh

echo ""
echo "Install li3b_users library..."
./li3 bootstrap install li3b_users
echo ""

echo ""
echo "Install li3b_gallery library..."
./li3 bootstrap install li3b_gallery
echo ""

echo ""
echo "Install li3_blog library..."
./li3 bootstrap install li3b_blog
echo ""

echo ""
echo "Update all submodules recursively..."
git submodule foreach git pull origin master
echo ""

echo ""
echo "Create a symlink for www => webroot..."
ln -s webroot www
echo ""