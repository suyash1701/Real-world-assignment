#!/bin/bash

greet_user(){
echo "hello , $1! have a great day!"}
echo "Enter your name:"
read username
greet_user $username
