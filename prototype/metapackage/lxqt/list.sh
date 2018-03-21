#!/usr/bin/env bash


apt-cache showsrc lxqt | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > lxqt-metapackages.md
