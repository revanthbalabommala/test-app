How to build docker images and run in local:
============================================

docker image build -t test-project .
docker run -d -p8080:8080 test-project
//to list docker containers
docker ps
//to list docker images
docker images
http://localhost:8080/test-svc/app


How to Push Docker Images into GCR:
===================================

PROJECT=$(gcloud config --quiet get-value project)
docker build -t gcr.io/$PROJECT/test-project:1.0 .
docker push gcr.io/$PROJECT/test-project:1.0

Follow Link: https://xebia.com/blog/how-to-grant-access-to-the-google-container-registry/


How to configure remote from your local:
=======================================

git remote -v //to view list of remotes configured in ur local
git branch -r //shows u the list of remote branches

Commands to remove exiting remote in GIT

-> git remote remove origin
-> validate it with git remote -v
-> git remote add origin https://github.com/revanthbalabommala/test-app.git (to add new remote)
