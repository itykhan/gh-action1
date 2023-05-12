#!/bin/bash

export COMMANDER_SESSIONFILE=/github/workspace/.ecsession

echo $COMMANDER_SESSIONFILE
echo 'test'>/github/workspace/test.txt

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline it-test gha-test --actualParameter repo=$CDRO_REPO
