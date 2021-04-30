#!/bin/bash
while getopts s:d:n: flag
do
    case "${flag}" in
        s) src=${OPTARG};;
        d) dst=${OPTARG};;
        n) name=${OPTARG};;
    esac
done
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
echo "Backing up to " "${dst}/${name}-${DATE}.tar.gz"
tar -pczf  "${dst}/${name}-${DATE}.tar.gz" "${src}"
