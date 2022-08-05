#!/bin/sh -l

if false
then
    echo 'error'
    exit 1 # This is how you tells that it fails!
fi
echo "::debug ::Debug Message - docker action" # Format telling to use a Log format
echo "::warning ::Warning Message - docker action" # Format telling to use a Log format
echo "::error ::Error Message - docker action" # Format telling to use a Log format

echo "::add-mask::$1"
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "::group::Some expandable logs"
echo "some stuff#1"
echo "some stuff#2"
echo "some stuff#3"
echo "::endgroup::s"

# echo "::set-env name=HELLO::hello" # THIS IS DISABLE/DEPRECATED
# see https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#setting-an-environment-variable
echo "HELLO=hello" >> $GITHUB_ENV