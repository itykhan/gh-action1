#!/bin/bash

export COMMANDER_SESSIONFILE=/tmp/.ecsession

echo $COMMANDER_SESSIONFILE

pwd
echo $USER

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline $INPUT_PIPELINE_PROJECT_NAME $INPUT_PIPELINE_NAME --actualParameter repo=$CDRO_REPO
