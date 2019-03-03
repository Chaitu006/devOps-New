# Caching service

## Build using 

docker build -t devops-docker

## Deploying containerized service to heroku

chmod +x heroku.sh
./heroku.sh

## Running service

pip install flask
pip install redis
python server.py

## curl request

- Request
`curl http://<test-heroku-url>.herokuapp.com/get/test`

- Response
```
{
 "value: "Test Response!"
}
```

# K8s cluster creation/deployment
- install minikube
`brew cask install minikube`
- run commands - configure
./k8s.sh