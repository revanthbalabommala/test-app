Test-App -> To test Sample Rest Service in GCP Compute & Kubernetes Cluster

Steps to Build & Run Docker Image in Local:

1. docker image build -t test-project .
2. docker run -d -p8080:8080 test-app-docker-image
3. Command to list existing docker container running -> docker ps
4. Command to list existing docker images -> docker images

Endpoint to test once docker container is running -> http://localhost:8080/test-svc/app

Steps to Push Docker Image into GCR:

1. Run this command -> PROJECT=$(gcloud config --quiet get-value project)
2. docker build -t gcr.io/$PROJECT/test-project:1.0 .
3. docker push gcr.io/$PROJECT/test-project:1.0

Reference Link to follow: https://xebia.com/blog/how-to-grant-access-to-the-google-container-registry/

How to configure remote from your local:

Additional Reference to Git Commands:

-> git remote -v //to view list of remotes configured in ur local
-> git branch -r //shows u the list of remote branches
-> git remote remove origin //to remove existing remote in git
-> git remote add origin https://github.com/revanthbalabommala/test-app.git (to add new remote) //Commands to remove exiting remote in GIT

Docker Command to Run in Compute Engine:

1. docker pull gcr.io/carbon-dev-392917/test-project:1.0
2. docker run -p8080:8080 gcr.io/carbon-dev-392917/test-project:1.0
3. After Deployment test it: ->http://{COMPUTE_ENGINE_IPADDRESS}:8080/test-svc/app


