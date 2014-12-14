#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/config

cd ~
sshfs -o reconnect $remote_host: $mount_local_dir
cd -