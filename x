#!/bin/bash
# for me profiles

cd
git clone https://github.com/xhat/centos.git
cp centos/.bashrc ./
cp centos/.inputrc ./
cp centos/.bash_profile ./
cp centos/.vimrc ./

source .bashrc 
source .inputrc 
source .bash_profile 

rm centos -rf 
