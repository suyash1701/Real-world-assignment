#!/bin/bash

echo "Enter your First Number:"
read a
echo "Enter your second Number:"
read b

echo "Choose operation(+,-,*,/):"
read op

case $op in
	+) result=$((a+b));;
	-) result=$((a-b));;
	\*) result=$((a*b));;
	/) result=$((a/b));;
	*) echo "Invaild operation"; exit 1 ;;
esac

echo "Result: $result"

