#!/bin/bash

export COMMANDER_SESSIONFILE=/tmp/.ecsession

echo $INPUT_PIPELINE-PROJECT-NAME
echo INPUT_PIPELINE-NAME

pwd
echo $USER

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline $INPUT_PIPELINE-PROJECT-NAME $INPUT_PIPELINE-NAME --actualParameter repo=$CDRO_REPO
