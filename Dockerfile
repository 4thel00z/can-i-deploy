FROM debian
ARG CAN_I_DEPLOY_VERSION=1.91.0
ARG BUILD_DATE

# labels
LABEL maintainer="4thel00z@gmail.com"
LABEL host.ransomware.build-date=$BUILD_DATE
LABEL host.ransomware.description="PACT contract testing can-i-deploy docker container"
LABEL host.ransomware.url="https://github.com/4thel00z/can-i-deploy"
WORKDIR /pact

ENV CAN_I_DEPLOY_VERSION=${CAN_I_DEPLOY_VERSION:-1.91.1}

RUN DEBIAN_FRONTEND=noninteractive apt-get update && echo y | DEBIAN_FRONTEND=noninteractive apt-get install -yq curl tar bash
RUN curl -LO "https://github.com/pact-foundation/pact-ruby-standalone/releases/download/v1.91.0/pact-$CAN_I_DEPLOY_VERSION-linux-x86_64.tar.gz" && tar xzf "pact-$CAN_I_DEPLOY_VERSION-linux-x86_64.tar.gz"
ENTRYPOINT ["/pact/pact/bin/pact-broker", "can-i-deploy"]
