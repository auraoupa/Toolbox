# Learn about docker

## Ressources

 - tutorial : https://www.docker.com/101-tutorial
 - our current pilot jupyterhub docker image : https://github.com/2i2c-org/pilot-hubs/blob/master/hubs.yaml#L384
 - infos on using a custom docker image https://2i2c.org/pilot-hubs/custom-image.html
 - PANGEO docker images https://github.com/pangeo-data/pangeo-docker-images/ and https://hub.docker.com/u/pangeo
 - fortran in docker https://urban-institute.medium.com/fortran-and-docker-how-to-combine-legacy-code-with-cutting-edge-components-35e934b15023
 
## Test pangeo-notebook docker image on my MAC

 - install docker
 - open docker
 - git clone https://github.com/pangeo-data/pangeo-docker-images.git
 - cd pangeo-docker-images
 - install conda-lock : conda env create -f environment-condalock.yml
 - make pangeo-notebook
 - docker run -it --rm -p 8888:8888 pangeo/base-notebook:latest jupyter lab --ip 0.0.0.0

## Test fortran docker 

  - git clone https://github.com/UI-Research/HelloWorld_Fortran.git
  - cd HelloWorld_Fortran/
  - docker build -t helloworld .
  - docker run helloworld

## Le mix des 2 !!
