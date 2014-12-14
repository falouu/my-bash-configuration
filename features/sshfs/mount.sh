#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/config

cd ~
sshfs -o reconnect -o ServerAliveInterval=15 $remote_host: $mount_local_dir
cd -
