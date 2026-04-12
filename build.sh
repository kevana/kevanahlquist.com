#!/bin/bash
git submodule update --init
docker build -t kevan/kevanahlquist.com .
