#!/bin/bash
echo "Lines containing 'banana':"
grep -n 'banana' sample.txt

echo "Lines that do not contain 'banana':"
grep -nv 'banana' sample.txt

echo "Unique lines:"
sort sample.txt | uniq

echo "Count occurrences of each word:"
sort sample.txt | uniq -c

echo "Count occurrences of 'banana':"
grep 'banana' sample.txt | sort | uniq -c