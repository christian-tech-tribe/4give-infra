#!/bin/bash

git clone git@github.com:christian-tech-tribe/4give-api.git
pushd 4give-api
npm install
popd

git clone git@github.com:christian-tech-tribe/4give.git
pushd 4give
npm install
popd
