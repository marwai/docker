# Docker

## Pushing to Docker 
![pushing to docker](images/pushing_to_docker.gif)
__Instructions are below__

## What is containerisation?
- Packing up software code and all its dependencies (node package manager, programming languages) so that it can run uniformly and consistently on any infrastructure or operating system.
- Containerisation allows developers to create and deploy applications faster and securely.
- A container is a uniform structure in which any application can be stored, transported and run. It is named for and often compared to the standardised intermodal containers used in the shipping industry for efficient transportation.
- In the software world, containerisation is an efficient method for deploying applications. A container encapsulates an application with its own operating environment. 
- It can be placed on any host machine without special configuration, removing the issue of dependencies.

## Devops and Containerisation 
- Containerisation is key to reducing bottlenecks in the software pipeline.
- Increases 'velocity', by improving workflow because containers immediately solve application conflicts between different environments
- Eliminates 'it works on my machine' aphorism
- Containers and Docker bring developers and IT ops together, making it easier to collaborate because they simplify the build/test/deploy pipelines
- Ops and IT are collaborating through Docker, the devs own the container contents, its operating environment and dependencies. Ops can then use built images and run them in their orchestration system and deploy them with greater ease.
- No need to perform complex configuration tasks for every sprint
- **Cost optimisation** - Containers maximise resource utilisation within their own isolated virtualised environments. Organisations can accurately plan for infrastructure capacity and consumption.
- **Infrastructure agnostic** - Containers run on any OS, organisation can easily move workloads from on premise machine to virtualised environments to cloud infrastructure easily


## Containerisation vs Virtualisation 

```Virtualization``` enables you to run multiple operating systems on the hardware of a single physical server.
```Containerisation``` enables you to deploy multiple applications using the same operating system on a single virtual machine or server. 

# Pushing to Docker

##### 1) Log into your Docker account using the following command:

```docker login```

##### 2) View the Images available by typing, The image I copyed was for nginx. 

```docker images```

##### 3) Next use the following command. This works in a similar way to git add .

```
docker tag 4bb46517cac3 mark5670/eng67.man-wai.docker.repo
```

##### 4) Now to push we use the following command. It is docker push then your docker account name followed by the repo you want to push too

```docker push mark5670/eng67.man-wai.docker.repo```

##### 5) Your image sould now be pushed onto docker!!

### Pulling from Docker

##### 1) To pull a repo from docker use the following command

``` docker run -d -p 90:80 bariallali/bari-docker-eng67:Second_commit_adding_nginx_image ```

##### When pulled on your local host port 90 It should show the image in this case nginx

### Useful Terminology 
```
Docker images – Will present the images available
Docker ps – To check the containers running
Docker ps -a– To check every container running including hidden files
Docker pull – to pull the image from docker hub
Docker run – to run the image live directly from dockerhub

```

