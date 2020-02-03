<include a CircleCI status badge, here>

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested
In this project, I am provided with the app.py file and asked to deploy as a containerized microservice. 

I have written some scripts to run the docker image locally, which builds it and starts it connecting it to the local port 8000. I also wrote script to upload this image to make it easier to update the registry image.
---

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