# Tools
## Docker
### - dockerfile to create the application
### - docker-compose to enable the connection between the applicaiton and DB
## Pipeline
### Gitlab CI 
#### using GitlabCI as a CI tool to build the images and push it to Dockerhub
### Jenkins 
#### using Jenkins as a  CI tool to build the images and push it to Dockerhub
# Application Describition
This program is very simple, it connects to a MySQL database based on the following env vars:
* MYSQL_HOST
* MYSQL_USER
* MYSQL_PASS
* MYSQL_PORT
