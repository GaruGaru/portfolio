
# Tommaso Garuglieri's portfolio

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=GaruGaru&repoName=portfolio&branch=master&pipelineName=portfolio&accountName=garugaru&type=cf-1)]( https://g.codefresh.io/repositories/GaruGaru/portfolio/builds?filter=trigger:build;branch:master;service:59db2e2bd0bba4000159d320~portfolio)

## My dockerized portfolio served by nginx, scalable for the sake of it !

### [Live demo](http://garu.pizza/)


### Docker

#### [Docker image](https://hub.docker.com/r/garugaru/portfolio/)

### Run locally

    docker run -p 80:80 garugaru/portfolio

### Run on docker swarm

compose.yaml


    portfolio:
        image: garugaru/portfolio
        ports:
          - 80:80
        deploy:
          replicas: 2
          mode: replicated
          restart_policy:
            condition: on-failure


Deploy:

    docker stack deploy -c compose.yaml portfolio
