# Docker Compose Project
This project was made using Ubuntu 24.04. It uses Docker Compose for setting up various services for monitoring, database, and Redis management. It includes PostgreSQL, Redis, Grafana, Prometheus, pgAdmin and Redis Insight. Exporters are also used to gather and visualize data. The software can be run by first using the setup script and running docker compose afterwards.
## Technical Documentation for detailed explanation
[Link To Technical Documentation]()
<!-- toc -->
- [Installation](#installation)
  - [Cloning from Git](#cloning-from-git)
  - [Running the Setup Script](#running-the-setup-script)
- [Running the Software](#running-the-software)
  - [Running Docker Compose](#running-docker-compose)
  - [Running Test Scripts](#running-test-scripts)
- [Software Services](#software-services) 
  - [pgAdmin](#pgadmin)
  - [Redis Insight](#redis-insight)
  - [Prometheus](#prometheus)
  - [Grafana](#grafana)
<!-- tocstop -->
## Installation
### Cloning From Git
First the project needs to be cloned to an appropriate machine (Ubuntu or Debian based machine). Afterwards, change directories into the project. The commands are provided below:
```bash
git clone https://github.com/aring99/docker-compose-project
cd docker-compose-project
```

### Running the Setup Script
Once inside the docker-compose-project directory, the setup script needs to be executed to install necessary software such as Docker and Docker Compose. Execute the command below:
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
This Section describes how to connect and access the services. 
### pgAdmin
1. To connect to pgAdmin, the following needs to be entered on a browser: ```http://localhost:5050```
Alternatively, in the case a VM is used or the previous command fails, instead use the IPv4 address instead of localhost. For example, if the IPv4 address is "44.202.109.53", the command to be entered is: ```http://44.202.109.53:5050```

2. After connecting, a login screen will be shown. The login details are: email address: ```admin@admin.com``` and password: ```root``

3. To create databases, the container IPv4 is required. To find this information, the following steps need to be followed:
 ```
   1. Execute:
   docker container ls

   2. copy the id of the container "postgres" and run the following command:
   docker inspect <postgres-container-id>

   3.After running the command provided in the second step, find the field "IPAddress" and copy the IPv4 value.
   ```
4. To create a new server, press "Add New Server"

5. This will open the general tab first and the database needs to be named.

6. After giving the database a name, the  ```Connection``` field needs to be opened. The IPv4 address retrieved on step 3 needs to be pasted in the ```Host name/address``` field. Finally, the ```Username``` and ```Password``` fields need to be set to ```root``` 
### Redis Insight
1. To connect to Redis Insight, the following needs to be entered on a browser: ```http://localhost:8001```
Alternatively, in the case a VM is used or the previous command fails, instead use the IPv4 address instead of localhost. For example, if the IPv4 address is "44.202.109.53", the command to be entered is: ```http://44.202.109.53:8001```

2. After connecting, click the field ```I already have a database```.

3. On the following screen, continue with ```Connect to a Redis Database``` option.

4.  In this screen, the ```Username``` should be given as ```redis```, the ```Port``` as ```6379``` and the ```Name``` can be any name.
### Prometheus
1.To connect to Prometheus, the following needs to be entered on a browser: ```http://localhost:9090```
Alternatively, in the case a VM is used or the previous command fails, instead use the IPv4 address instead of localhost. For example, if the IPv4 address is "44.202.109.53", the command to be entered is: ```http://44.202.109.53:9090```

2. To see the targets, click on ```Status``` and ```Target health```
### Grafana
1.To connect to Grafana, the following needs to be entered on a browser: ```http://localhost:3000```
Alternatively, in the case a VM is used or the previous command fails, instead use the IPv4 address instead of localhost. For example, if the IPv4 address is "44.202.109.53", the command to be entered is: ```http://44.202.109.53:3000```

2. A login screen will appear, both the ```username``` and ```password``` fields are ```admin```. Afterwards, an optional "choose new password" page is opened.

3. Following the login screen, click on ```Connections``` ,afterwards on ```Data sources``` on the left. Alternatively, search ```Data sources``` on the search bar. This will show that the prometheus data from the node_exporter is already configured.

4. To check this data, click on ```Dashboards``` on the left or use the searchbar to reach the Dashboards page. An already configured dashboard called "Node Exporter Full" is present. Clicking on it will show the basic metrics of the system.  
