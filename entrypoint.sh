#!/bin/bash

set -e

ectool --debug 1 --server "${CDRO_HOST}" login "${CDRO_USER}" $CDRO_PASSWORD
ectool runPipeline it-test gha-test --actualParameter repo="${CDRO_REPO}"
"
