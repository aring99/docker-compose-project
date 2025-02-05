# Docker Compose Project
This project was made using Ubuntu 22.04. This Project uses Docker Compose for setting up various services for monitoring, database, and Redis management. It includes PostgreSQL, Redis, Grafana, Prometheus, pgAdmin and Redis Insight. Exporters are also used to gather and visualize data.
 The software can be run by first using the setup script and running docker compose afterwards.
## Technical Documentation for detailed explanation
[Link To Technical Documentation]()
<!-- toc -->
- [Installing](#installing)
  - [Cloning from Git](#cloning-from-git)
  - [Running the Install Script](#running-the-install-script)
- [Running the Software](#running-the-software)
  - [Running Docker Compose](#running-docker-compose)
  - [Running Test Scripts](#running-test-scripts)
- [Software Services](#software-services) 
  - [pgAdmin](#pgadmin)
  - [Redis Insight](#redis-insight)
  - [Prometheus](#prometheus)
  - [Grafana](#grafana)
<!-- tocstop -->
## Installing

### Cloning From Git
First the project needs to be cloned to an appropriate machine (Ubuntu or Debian based machine). Afterwards, change directories into the project. The commands are provided below:
```bash
git clone https://github.com/aring99/docker-compose-project
cd docker-compose-project
```
### Running the Install Script
Once inside the docker-compose-project directory, the setup script needs to be executed to install neccessary software such as Docker and Docker Compose. Execute the command below:
```bash
./setup_all.sh
```

## Running the Software

### Running Docker Compose
To run the project, docker compose needs to be brought up. To achieve that, the command below should be executed:
```bash
docker compose up -d
```
If the software needs to be closed, ```docker compose down``` should be entered.

### Running Test Scripts
Two test scripts are available. The first script pings the ```PostgreSQL``` service and the second script pings the ```Redis``` service. The commands to run the script are provided below:

PostgreSQL test Script:
```bash
./test_postgres.sh
```

Redis test Script:
```bash
./test_redis.sh
```
## Software Services


