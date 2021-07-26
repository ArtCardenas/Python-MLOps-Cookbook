#!/usr/bin/env bash

PORT=8080
echo "Port: $PORT"

#
# there are 2 methods for CURL: POST and GET
# GET method predict() inside app.py
# 
# https://stackoverflow.com/questions/14978411/http-post-and-get-using-curl-in-linux
#

#curl -d '{  
#   "Weight":250
#}'\
#     -i \
#     -H "Accept: application/json" \
#     -H "Content-Type: application/json" \
#     -X GET http://localhost:$PORT/predicthtml
     
     
# curl -X GET http://localhost:8080/predicthtml?Weight=300
# curl GET http://localhost:8080/predicthtml?Weight=300    
curl http://localhost:8080/predicthtml?Weight=250