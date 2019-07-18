#!/usr/bin/env bash 
set -eu 
user=decipherservices
repo=helm-charts
commit=   # 40 character SHA1
token=   # for oauth
domain=https://api.github.com 

oauth() { 
    curl -sSH "Authorization: token $token" "$@"
} 
basic() { 
    curl -sSu $user "$@" 
}


echo "-----------Create A Status: -----------"
# create a status
oauth -d '{"state":"success"}' $domain/repos/$user/$repo/statuses/$commit
# echo "-----------List Statuses: -----------"
# # list statuses
# oauth $domain/repos/$user/$repo/commits/$commit/statuses
