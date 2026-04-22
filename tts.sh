#!/bin/sh

grep --line-buffered -F "[CHATTTS]"|grep --line-buffered -F "<"|while read line
do
	pitch=$(echo "$line"|awk -F"[<>]" '{print $2}'| sha256sum | grep -Eo "[[:digit:]]{2}"  | head -n1)
	msg=$(echo "$line"|sed 's/^[^>]*>//')
	echo "$msg"|espeak -p $pitch
done
