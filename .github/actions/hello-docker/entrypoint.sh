#!/bin/sh -l

echo "::debug ::Debug Message" # Format telling to use a Log format
echo "::warning ::Warning Message" # Format telling to use a Log format
echo "::error ::Error Message" # Format telling to use a Log format

echo "::add-mask::$1"
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "::group::Some expandable logs"
echo "some stuff#1"
echo "some stuff#2"
echo "some stuff#3"
echo "::endgroup::s"

echo "::set-env name=HELLO::hello"