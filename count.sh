#!/bin/bash

# find number of "S" in word MISSISSIPI


x=mississipi

grep -o "s"<<< "$x$" | wc -l
