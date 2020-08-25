## What is Docker?
Docker is an open source platform for containerisation.

# Container
A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. A Docker container image 
is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.



## Difference between vms and containerisation?
- Docker is lightweight compared to VMs - rather than running a whole virtual machine - the dependencies can be packaged
- OS apgnostic - doesn't matter what system you use - rather than emulating system hardware
- Docker shares the resource of an OS than creating an entire virtual environment
- Good streaming - available in local host - loses internet 
- More images
- Vagrant is slow - akes a lot of time loading

![vms and docker](images/vms_docker.png)

## Process
![docker process](images/docker_process.svg)

# Why/Benefit?
- Fast consistent delivery of your application 


# Who is using docker?
- Multi-billionaire companies 

'''
# Looks running containers 
docker ps 

# Select nginx tag
6aaeee2a770c 

# run this in linux 
docker exec -it 6aaeee2a770c sh

# go into folder
 cd /usr/share/nginx/html

# ls - looking for index.html 
#50x.html index.html
# Here is the default location for index.html
```
____

# Exercise - cp os to docker index.html
docker cp ~/DevOps/code/app1/static-website-example/index.html 5539deab9f3a:/usr/share/nginx/html
docker cp ~/DevOps/code/app1/static-website-example/assets 5539deab9f3a:/usr/share/nginx/html
docker cp ~/DevOps/code/app1/static-website-example/images 5539deab9f3a:/usr/share/nginx/html
'''
 
### copying logs
docker ps
docker logs container - live logs
docker logs 5539deab9f3a >> nginx_logs.txt

____
# Docker language to copy app, running go
- automated nginx 
```
# "'" pick file from current dir 
docker build -t mark5670/nginx-app:first_app .

# makes a new repo 
docker push mark5670/nginx-app:first_app 

# enter the linux env
docker exec -it 5539deab9f3a sh

apt-get update 
apt-get nano

cd /usr/share/nginx/html
nano index.html 
# change a title to check it is working
```
____


# Terminology 

__Delete image__
```docker rmi imageID```
