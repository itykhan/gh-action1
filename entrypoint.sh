#!/bin/bash

export COMMANDER_SESSIONFILE=/tmp/.ecsession

echo $INPUT_PIPELINEPROJECTNAME
echo $INPUT_PIPELINENAME

pwd
echo $USER

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline $INPUT_PIPELINEPROJECTNAME $INPUT_PIPELINENAME --actualParameter repo=$CDRO_REPO
