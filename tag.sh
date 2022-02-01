#!/bin/bash
sed "s/mytag/$1/g" deploy.yaml > app.yaml 
