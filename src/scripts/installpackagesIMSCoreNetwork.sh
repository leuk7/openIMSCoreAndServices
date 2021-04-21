#!/bin/sh

#Script to install needed packages for the part 1
apt-get update
apt-get upgrade
echo""
echo "install packages part 1"
echo""
echo "install subversion"
apt-get install subversion
echo""
echo "install gcc-4.6"
apt-get install gcc-4.6
echo""
echo "install make"
apt-get install make
echo""
echo "install ant"
apt-get install ant
echo""
echo "install flex"
apt-get install flex
echo""
echo "install bison"
apt-get install bison
echo""
echo "install openjdk-7-jdk"
apt-get install openjdk-7-jdk
echo""
echo "install libmysql++3"
apt-get install libmysql++3
echo""
echo "install libmysql++-dev"
apt-get install libmysql++-dev
echo""
echo "install libmysql-java"
apt-get install libmysql-java
echo""
echo "install libxml2"
apt-get install libxml2
echo""
echo "install libxml2-dev"
apt-get install libxml2-dev
echo""
echo "install curl"
apt-get install curl
echo""
echo "install libcurl4-gnutls-dev"
apt-get install libcurl4-gnutls-dev
echo""
echo "install ipsec-tools"
apt-get install ipsec-tools
echo""
echo "install mysql-server"
apt-get install mysql-server
echo""
echo "install bind9"
apt-get install bind9
echo""
echo"install openssl"
apt-get install openssl
echo "----- Fin ----"