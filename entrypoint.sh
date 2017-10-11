#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

echo "Starting with user : $LOCAL_USER_NAME"
export HOME=/home/user

exec /usr/local/bin/gosu $LOCAL_USER_NAME "$@"
