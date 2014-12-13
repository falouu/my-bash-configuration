#!/bin/bash
source config

cd ~
sudo fusermount -u $mount_local_dir
cd -