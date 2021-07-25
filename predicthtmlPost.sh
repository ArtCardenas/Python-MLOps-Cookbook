#!/usr/bin/env bash

PORT=8080
echo "Port: $PORT"

#
# there are 2 methods for CURL: POST and GET
# POST method predict() inside app.py
# 
# https://stackoverflow.com/questions/14978411/http-post-and-get-using-curl-in-linux
#
curl -d '{  
   "Weight":200
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predicthtml