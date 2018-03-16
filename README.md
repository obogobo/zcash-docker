# zcash-docker
A Dockerfile for running the official ZCash linux client

## Prerequisites
Docker Engine 17.09.0+ (for docker-compose feature support)

## Setup
* Change the RPC password / add any additional options in `zcash.conf`
* That's it!

## Running
```
$ docker-compose up
```

-or-

```
$ docker image build -t zcash:test .
$ docker volume create zcashdocker_home
$ docker container run -it -p 8232:8232 -v zcashdocker_home:/root zcash:test
```

Either option creates a named volume, so you won't have to resync the blockchain every time the container starts.

## Using
```
docker exec -it <container_id> bash
```

Example, using the RPC API:
`$ apt-get install netcat && nc 127.0.0.1 8232` 
