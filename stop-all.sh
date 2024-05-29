#!/bin/bash

MY_UID="$(id -u)" MY_GID="$(id -g)" docker compose --env-file .env down 
