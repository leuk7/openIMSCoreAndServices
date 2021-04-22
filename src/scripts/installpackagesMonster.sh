#!/bin/sh

echo  "Add additional repositories"
echo "Install Ubuntu-restricted-extras"
apt-get install ubuntu-restricted-extras
echo "Add DDALEX/GSTEEAMER repository"
add-apt-repository ppa:ddalex/gstreamer
apt-get update

echo ""
echo "Install Packages"
echo "Gstreamer1.0"
apt-get install gstreamer1.0
echo ""
echo "libexosip2-dev"
apt-get install libexosip2-dev
echo ""
echo "libgtk2.0-dev"
apt-get install libgtk2.0-dev
echo ""
echo "libxml2-dev"
apt-get install libxml2-dev
echo ""
echo "libcurl4-openssl-dev"
apt-get install libcurl4-openssl-dev
echo ""
echo "libgstreamer0.10-0"
apt-get install libgstreamer0.10-0
echo ""
echo "libgstreamer-plugins-base0.10-dev"
apt-get install libgstreamer-plugins-base0.10-dev
echo ""
echo "gstreamer0.10-plugins-base"
apt-get install gstreamer0.10-plugins-base
echo ""
echo "gstreamer0-10-plugins-good"
apt-get install gstreamer0.10-plugins-good
echo ""
echo "gstreamer0.10-plugins-bad"
apt-get install gstreamer0.10-plugins-bad
echo ""
echo "gstreamer0.10-plugins-ugly"
apt-get install gstreamer0.10-plugins-ugly
echo ""
echo "libavcodec-extra-53"
apt-get install libavcodec-extra-53
echo ""
echo "libavcodec-dev"
apt-get install libavcodec-dev
echo ""
echo "libavcodec-unstripped-51"
apt-get install libavcodec-unstripped-51
echo ""
echo "libvlc-dev"
apt-get install libvlc-dev
echo ""
echo "vlc"
apt-get install vlc

