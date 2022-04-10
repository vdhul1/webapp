set -x

ls
pwd

sudo docker build . -t vdhul1/cicd-pipleline:${DOCKER_TAG}
echo ${DOCKER_PASSWORD} | sudo docker login -u vdhul1 --password-stdin https://index.docker.io/v1/
sudo docker push vdhul1/cicd-pipleline:${DOCKER_TAG}
