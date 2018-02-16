#!/bin/bash

docker volume create sqldata
docker volume create sqlbackup

docker volume ls