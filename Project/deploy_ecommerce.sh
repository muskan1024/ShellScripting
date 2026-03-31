#!/bin/bash

clone(){
	echo "Cloning the E-commerce app........."
	git clone https://github.com/justdjango/django-ecommerce.git
}

install_requirements(){
	echo "Installing requirements......."
	sudo apt-get update -y
	sudo apt-get install docker.io -y
       	sudo apt-get install docker-compose -y
}

required_restarts() {
	echo "Restarting docker"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl restart docker
}

deploy(){
	echo "Deploying app..."
	docker-compose up -d
}

echo "**************DEPLOYMENT STARTED*************"
if ! clone; then
	echo "This repo already exists..."
fi

cd django-ecommerce

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi

deploy

echo "***************DEPLOYEMENT ENDED*************"
