# Docker

## What is Docker?
Docker is an open source platform for containerisation.


## Difference?
- Docker is lightweight compared to VMs
- Docker shares the resource of an OS than creating an entire virtual environment

## Pushing to Docker 
![pushing to docker](images/pushing_to_docker.gif)
__Instructions are below__

## What is containerisation?
Containerization involves bundling an application together with all of its related configuration files, libraries and dependencies required for it to run in an efficient and bug-free way across different 
computing environments.


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


## Monolithic Architecture

### - A monolithic architecture is the traditional unified model for the design of a software program.

### - Monolithic software is designed to be self-contained; components of the program are interconnected and interdependent rather than loosely coupled


## What is microservices

- What sets a microservices architecture apart from more traditional, monolithic approaches is how it breaks an app down into its core functions. Each function is called a service, and can be built and deployed independently, meaning individual services can function without negatively affecting the others. This helps to make constant iteration and delivery (CI/CD) more seamless and achievable.

![monolithics_vs_microservices](/images/monolithic-vs-microservices.png)

### - A lefthand side bar could represent a service, meanining we can easily make changes to it without affecting other parts of the website

### - Microservices is all about breaking down apps into their core functions which can communicate to eachother through API calls
- 

### Advantages of Microservices

- **Scalability**: Since the services are seperate, we can easily scale the most needed services when necessary as opposed to scaling the whole application, thus improving cost savings

- **Faster Deplyoments**: Smaller codebases allows for quicker deployments and thus improving the efficiency of the CI/CD pipeline. Leading to greater customer satisfaction

- **More technological flexibility**: Smaller services means that you can try out new tools on an individual service without it affecting the rest of the application, this means organisations can experiment between more efficient tools 


### Disadvantages of Microservices

- **May not be benefifial for small businesses**: Microservices can be difficult to implement for smaller business who don't want to be bogged down in complex orchestration between all the services

- **Global Testing can be more difficult**: In microservices architecture it can difficult to test that all the services are running in complete synchronisation as opposed to a Monolithic archtecture which uses a WAR container



# Pushing to Docker

1) Log into your Docker account using the following command:

```docker login```

2) View the Images available by typing, The image I copyed was for nginx. 

```docker images```

3) Next use the following command. This works in a similar way to git add .

```
docker tag 4bb46517cac3 mark5670/eng67.man-wai.docker.repo
```

4) Now to push we use the following command. It is docker push then your docker account name followed by the repo you want to push too

```docker push mark5670/eng67.man-wai.docker.repo```

5) Your image sould now be pushed onto docker!!

### Pulling from Docker

1) To pull a repo from docker use the following command

``` docker run -d -p 90:80 mark5670/eng67.man-wai.docker:Second_commit_adding_nginx_image ```

##### When pulled on your local host port 90 It should show the image in this case nginx

### Useful Terminology 
```
Docker images – Will present the images available
Docker ps – To check the containers running
Docker ps -a– To check every container running including hidden files
Docker pull – to pull the image from docker hub
Docker run – to run the image live directly from dockerhub

```

# COMPLETED TASK 

