
Test-App -> To test Sample Rest Service in GCP Compute & Kubernetes Cluster

Steps to Build & Run Docker Image in Local:
==========================================

docker image build -t test-project .
docker run -d -p8080:8080 test-project
Command to list existing docker container running -> docker ps
Command to list existing docker images -> docker images
Endpoint to test once docker container is running -> http://localhost:8080/test-svc/app

Steps to Push Docker Image into GCR:
====================================

Run this command -> PROJECT=$(gcloud config --quiet get-value project)
docker build -t gcr.io/$PROJECT/test-project:1.0 .
docker push gcr.io/$PROJECT/test-project:1.0
Reference Link to follow: https://xebia.com/blog/how-to-grant-access-to-the-google-container-registry/

How to configure remote from your local:
========================================
Additional Reference to Git Commands:

-> git remote -v //to view list of remotes configured in ur local 
-> git branch -r //shows u the list of remote branches 
-> git remote remove origin //to remove existing remote in git -> git remote add origin https://github.com/revanthbalabommala/test-app.git (to add new remote) //Commands to remove exiting remote in GIT

Docker Command to Run in Compute Engine:
========================================

docker pull gcr.io/carbon-dev-392917/test-project:1.0
docker run -p8080:8080 gcr.io/carbon-dev-392917/test-project:1.0
After Deployment test it: ->http://{COMPUTE_ENGINE_IPADDRESS}:8080/test-svc/app


How to push Docker Image into Docker Hub:
=========================================

-> Login and create account in Docker Hub: https://hub.docker.com/
-> create repo with lower case
-> Build new docker image in the local 
     Ex: docker image build -t rbalabommala/test-project .
-> Validate docker image in the local -> docker images
-> docker push rbalabommala/test-project:latest

Note: If it prompts you to authenticate -> docker login

