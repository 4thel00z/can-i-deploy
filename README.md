# can-i-deploy

## Motivation

A docker image to run the `can-i-deploy` binary in the ci easily, to enable contract tests.

## Installation

```
git clone https://github.com/4thel00z/can-i-deploy.git
cd can-i-deploy
make
```

## Running

```
# Minimally
docker run -it can-i-deploy:latest --participant participant-name --broker-base-url http://localhost
```

## License

This project is licensed under the GPL-3 license.
