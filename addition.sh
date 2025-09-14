#!/bin/bash

# Addition of two numbers

echo -n "Enter the first number: "
read -r a
echo -n "Enter the second number: "
read -r b
echo "$a + $b = $((a+b))"
