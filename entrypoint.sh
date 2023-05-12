#!/bin/bash

set -e

ectool --debug 1 --server "${env.CDRO_HOST}" login "${env.CDRO_USER}" $CDRO_PASSWORD
ectool runPipeline it-test gha-test --actualParameter repo="${env.CDRO_REPO}"
"
