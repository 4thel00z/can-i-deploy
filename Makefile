build:
	docker build -t can-i-deploy --build-arg BUILD_DATE=$(shell date -u +'%Y-%m-%dT%H:%M:%SZ') --build-arg BROKER_RETRY_WHILE_UNKNOWN=12 --build-arg BROKER_RETRY_INTERVAL=10 --build-arg CAN_I_DEPLOY_VERSION=1.91.0 .

