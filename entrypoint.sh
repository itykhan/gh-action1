#!/bin/bash

export COMMANDER_SESSIONFILE=/tmp/.ecsession

ectool --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline $INPUT_PIPELINEPROJECTNAME $INPUT_PIPELINENAME --actualParameter $INPUT_ACTUALPARAMETERS
