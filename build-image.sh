#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"
sudo docker build -t pkeropen3/hadoop-docker .

echo ""