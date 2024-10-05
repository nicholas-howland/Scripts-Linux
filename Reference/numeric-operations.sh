#!/bin/bash

x=$(date +%d)
y=$(expr $x - 1)
date +%Y-%m-$y
