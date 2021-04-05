
	
##############################################################################
# DOCKER
#
#tag 
#	<docker-hub-id>/<repo-name>:<image-name>
#	ex nigelpoulton/gsd:first-ctr
##############################################################################
docker image ls
docker image rm <name>               #Remove image
docker container rm <name>           #Remove container
docker run <image name>                  #Run container	 -d for background, -p <port in laptop>:<port in container>, -it interactive and ---name <name>
										 # Exit to come out of interactive mode It will kill container. Press Ctrl + P + Q to avoid that
docker start <container name>            #Start container
docker stop <container name>             #Stop container
	
##############################################################################
# DOCKER COMPOSE
##############################################################################
docker-compose up
docker-compose down

