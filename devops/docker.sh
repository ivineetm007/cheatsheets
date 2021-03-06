
	
##############################################################################
# DOCKER
##############################################################################
# tag 
#	<docker-hub-id>/<repo-name>:<image-name>
#	ex nigelpoulton/gsd:first-ctr
##############################################################################
#IMAGE
docker image ls
docker image build                   #build image from dockerfile -t Name and optionally a tag in the 'name:tag' format
docker image pull                    #Push an image
docker image push                    #Pull an dockerfile
docker image rm <name>               #Remove image
docker image history <name>

docker run <image name>              #Run container	 -d for background, -p <port in laptop>:<port in container>, -it interactive and ---name <name>. -w working directory
						             # Exit to come out of interactive mode It will kill container. Press Ctrl + P + Q to avoid that
#Container
docker container rm <name>           #Remove container
docker ps                            #List containers
docker start <container name>        #Start container
docker stop <container name>         #Stop container
docker rm <container id>

#Volume
docker volume create todo-db         #create a volume named todo-db
docker volume inspect todo-db        #Inspect a volume named todo-db
docker volume ls                     #List all volumes
docker volume remove todo-db         #Remove a volume named todo-db

#network
docker network create todo-app       #create a volume named todo-app
##############################################################################
# DOCKER COMPOSE
##############################################################################
docker-compose up
docker-compose down                  # If you want to remove the volumes, you will need to add the --volumes flag.
docker-compose logs                  # -f  flag “follows” the log, so will give you live output as it’s generated.

