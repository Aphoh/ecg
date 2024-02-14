#!/bin/bash

url=https://www.physionet.org/files/challenge-2017/1.0.0

mkdir data && cd data

curl -o training2017.zip $url/training2017.zip?download
unzip training2017.zip
curl  -o sample2017.zip $url/sample2017.zip?download
unzip sample2017.zip
curl -O $url/REFERENCE-v3.csv

cd ..

python build_datasets.py

