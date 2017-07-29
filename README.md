
# Tommaso Garuglieri's portfolio

## My dockerized portfolio served by nginx, scalable for the sake of it !


### Run locally

  docker run -p 80:80 garugaru/portfolio

### Run on docker swarm

compose.yaml

'''
    portfolio:
      image: garugaru/portfolio
      ports:
        - 80:80
      deploy:
        replicas: 2
        mode: replicated
        restart_policy:
          condition: on-failure
'''

Deploy:

    docker stack deploy -c compose.yaml portfolio
