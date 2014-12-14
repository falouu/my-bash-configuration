#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/config

cd ~
sudo fusermount -u $mount_local_dir
cd -