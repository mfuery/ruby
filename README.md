# SendChinatownLoveAPI



## Setup
- Ruby x 
- Rails 6x 
- [Docker-Compose](https://docs.docker.com/compose/install/)


For ubuntu try using ... 
https://gorails.com/setup/ubuntu/19.10

## on machine

TBD 


## containerized
requires
- docker
- docker-compose

```
docker-compose up
```


## deployment 

install [heroku-cli](https://devcenter.heroku.com/articles/heroku-cli)

After `heroku login` and you are added the project

`git subtree push --prefix api heroku master`

or if pipelines already setup, push naturally to branches
