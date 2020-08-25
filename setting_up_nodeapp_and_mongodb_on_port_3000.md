![WORKING_EXERCISE_YESS](images/mongodb_on_port_3000_in_docker.gif)

# Exercise
- Create a microservice of nodeapp
1) download app into docker file

2) cd app
mark5670/nginx-app:first_ap

3) docker build -t mark5670/sparta-node-app-containerised .

4) docker images

5) docker run -d -p 3000:3000 mark5670/sparta-node-app-containerised
_____

# Running webpp and mongodb on port 3000
1) move into the folder
```
cd
cd DevOps/Docker/Environment/
```

2) run the provision folder
```
# pressing tab after ./se will autofill the remaining words
./setup.sh
```

3) going into your browser
```
# Type 'localhost:3000', if this works type the follow
# Type 'localhost:3000/fibonacci/4', if this works type the following below
# Type localhost:3000/posts

# Troubleshooting
if there are any errors, try the following
```
# check in your containers and images and remove all unecessary items
docker ps
# may need to add -f if it doesn't work
docker rm containerID_1 ContainerID_2

docker images
docker rmi imagesID -f

docker-compose down
# THEN FOLLOW INSTRUCTIONS 1-3 AGAIN
# IF PROBLEM PERSISTS TRY DELETING THE SPARTA-NODE-APP-CONTAINERISED AND START ON NEXT-EXERCISE AND FOLLOW ALL STEPS
```
