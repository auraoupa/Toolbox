### Modify singularity image on a linux platform where you are root

I want to add cdo tools to pynextsim-no-code.sif singularity image.
On lgge194 :
  - download singularity images : ```scp alberta@fram.sigma2.no:/cluster/projects/nn9878k/sim/singularity_image_files/*sif .```
  - make a sandbox image (writable) from the singularity image : ```sudo singularity build --sandbox pynextsim_sandbox/ pynextsim-no-code.sif``` (needs root priviledge)
  - open the sandbox : ```sudo singularity shell --writable pynextsim_sandbox/```
  - install cdo tools : 
 ``` apt update
     apt install cdo
     exit
 ```
  - build new container : ```sudo singularity build pynextsim-cdo pynextsim_sandbox/```
  - test : ```singularity shell pynextsim-cdo``` cdo
 
 For boost library, install with ```apt-get update; apt-get install libboost-all-dev```
 Test the existence in the shell by typing ```b2```

### Turn a docker image into singularity 

- where the docker image was built : `docker save nextsim > nextsim_image.tar`

- On my lgge194 :
``` gunzip pynextsimf_shom_07.tar.gz
    singularity build test.sif docker-archive://pynextsimf_shom_07.tar
```
- Test with :
``` singularity shell test.sif```
and inside the container : 
```
cdo
ipython
In [1]: import bamg
In [2]: import mapx
In [3]: import pynextsim
In [4]: import pynextsimf
```
