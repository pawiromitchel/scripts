#!/bin/sh
curl "http://127.0.0.1:3000/rpc/receiveBlock" -d "$@"
