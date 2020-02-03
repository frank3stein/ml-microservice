[![CircleCI](https://circleci.com/gh/frank3stein/ml-microservice.svg?style=svg)](https://circleci.com/gh/frank3stein/ml-microservice)

## Project Overview

I have written some scripts to run the docker image locally, which builds it and starts it connecting it to the local port 8000. I also wrote script to upload this image to make it easier to update the registry image.


## Setup the Environment
1. Run `make setup`, which will create a virtual environment.
2. Activate the venv, `source ~/.devops/bin/activate`
3. `make install`

To lint the project, you can run `make lint`


### Running `app.py`

1. Standalone:  `python3 app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


To test it afterwards, you can run the script `./make_prediction.sh`


To see the results, you can look into output_txt_files where the output of the docker container and kubernetes are saved. 