#!/bin/bash
source config

cd ~
sshfs -o reconnect $remote_host: $mount_local_dir
cd -