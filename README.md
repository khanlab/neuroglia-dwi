# neuroglia-dwi

Singularity image for neuroimaging dependencies. Supplements http://www.github.com/khanlab/neuroglia-core with additional DWI software. Includes:

* mrtrix3
* camino
* unring
* DKE

Commits and pull-requests to this repository rebuild the `latest` version on Docker Hub, which is updated nightly to Singularity Hub. Releases on Docker Hub and Singularity Hub are built whenever a tag named `v.*` is committed. To avoid re-building on minor commits (e.g. changes to documentation), use `[skip ci]` in the commit message.

[![CircleCI](https://circleci.com/gh/khanlab/neuroglia-dwi.svg?style=svg)](https://circleci.com/gh/khanlab/neuroglia-core)
[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/451)

Docker:
`docker pull khanlab/neuroglia-dwi`

Singularity:
`singularity pull khanlab/neuroglia-dwi`
