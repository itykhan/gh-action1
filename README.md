This is a test action to run CloudBees CD/RO pipeline using cloudbees/cbflow-tools image

**Inputs:**
- pipelineProjectName: 'Name of a project containing a pipeline' (required)
- pipelineName: 'Name of a pipeline' (required)
- actualParameters: 'Actual parameters in formal parameterName1=value1 parameterName2=value2 ...' (optional)

**Environment variables**
- CDRO_HOST - CB CD/RO host name
- CDRO_USER - user name to login
- CDRO_PASSWORD - user password to login

**Example**
```
name: run cd pipeline

on: push

jobs:
  run-cd:
    runs-on: ubuntu-latest
    steps:
      - name: run CD/RO pipeline
        uses: itykhan/gh-action1@main
        with:
          pipelineProjectName: it-test
          pipelineName: gha-test
          actualParameters: repo=${{ github.repository }}
        env:
          CDRO_USER: ${{ vars.CDRO_USER }}
          CDRO_HOST: ${{ vars.CDRO_HOST }}
          CDRO_PASSWORD: ${{ secrets.CDRO_PASSWORD }}
```

