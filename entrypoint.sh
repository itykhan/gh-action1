#!/bin/bash


ectool --debug 1 --server sda.preview.cb-demos.io login $CDRO_USER $CDRO_PASSWORD
ectool runPipeline it-test gha-test --actualParameter repo=$GITHUB_ACTION_REPOSITORY
