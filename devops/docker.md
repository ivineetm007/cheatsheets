tag 
	<docker-hub-id>/<repo-name>:<image-name>
	ex nigelpoulton/gsd:first-ctr
	
	docker image ls
Remove image
	docker image rm <name>
Remove container
	docker container rm <name>
Run container
	-d for background
	-it interactive. exit to come out of interactive mode. It will kill container. Press Ctrl + P + Q to avoid that
	-p <port in laptop>:<port in container>
	---name <name>
	docker run <image name>
Start container
	docker run <container name>
Stop container
	docker run <container name>
	
Docker compose
	docker-compose up
	docker-compose down

