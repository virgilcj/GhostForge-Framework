#!/bin/bash
# Script to update and upgrade Kali Linux

set -e

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root or with sudo" >&2
    exit 1
fi

apt update && apt full-upgrade -y && apt autoremove -y
