# README - cda.cadvisor

This repository sets up cAdvisor to monitor Docker containers with host-specific information such as hostname.

## Setup

Clone the repository and navigate into the directory:

```bash
git clone https://github.com/cdaprod/cda.cadvisor
cd cda.cadvisor
```

## Running cAdvisor

Before starting cAdvisor, ensure the `.env` file has the correct hostname:

```bash
echo "HOSTNAME=$(hostname)" > .env
```

Then run the following command to start cAdvisor:

```bash
docker-compose up -d
```

## Accessing cAdvisor

Once the container is running, access cAdvisor using the following URL:

```
http://<host-ip>:8080
```

## Customizing Host Information

The `entrypoint.sh` script captures the hostname of the host machine and passes it to the cAdvisor container. You can modify this script to capture additional information if needed.