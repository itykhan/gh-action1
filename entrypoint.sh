#!/bin/bash

export COMMANDER_SESSIONFILE=/tmp/.ecsession

echo $COMMANDER_SESSIONFILE
echo 'test'>/tmp/test.txt
pwd
echo $USER

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline it-test gha-test --actualParameter repo=$CDRO_REPO
