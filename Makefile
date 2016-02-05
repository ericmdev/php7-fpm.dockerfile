# Build the image.
.PHONY: build
build:
	docker build -t php7-fpm-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop php7-fpm-container
	docker rm php7-fpm-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm php7-fpm-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# List all images.
.PHONY: logs
logs:
	docker logs php7-fpm-container

# Run the interactive container.
.PHONY: run
run:
	docker run -d --name php7-fpm-container -p 9090:9000 php7-fpm-image
	
# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it php7-fpm-container bash