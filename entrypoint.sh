#!/bin/bash

set -e

sudo ectool --debug 1 --server $CDRO_HOST login $CDRO_USER $CDRO_PASSWORD
sudo ectool runPipeline it-test gha-test --actualParameter repo=$CDRO_REPO
