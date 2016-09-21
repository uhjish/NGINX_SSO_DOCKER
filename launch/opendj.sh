#!/bin/bash

docker run  -d -p 1389:1389 -p 1636:1636 -p 4444:4444 --name opendj opendj
