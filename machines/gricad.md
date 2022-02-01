# GRICAD 

 - account management : https://perseus.univ-grenoble-alpes.fr/
 - documentation : https://gricad-doc.univ-grenoble-alpes.fr/
 
 ## Login
 
  - from anywhere first : ssh -CX alberta@access-ciment.imag.fr or ssh -CX alberta@access-ciment.ujf-grenoble.fr
  - then ssh -CX dahu
  - procedure to avoid log in to the frontal first : https://gricad-doc.univ-grenoble-alpes.fr/hpc/connexion/
  
 ## Repos
 
   - /home/alberta for scripts
   - /bettik/alberta for data
   - mantis : ils -> /cigri/home/alberta
     - commandes irods : https://docs.irods.org/master/
     - iput
     
 ## Jobs
 
   - OAR syntax : https://oar.imag.fr/
   - oarsub, oarstat -u alberta
   
 ## Jupyterhub
 
   - directly : https://jupyterhub.u-ga.fr/hub/login with PERSEUS login and password -> no access to data
   - doc https://gricad-doc.univ-grenoble-alpes.fr/notebook/platform/
   
 ## Jupyter notebooks directly on clusters nodes
 
   - conda environment
     - wget
https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
     - sh Miniconda2-latest-Linux-x86_64.sh
     - . ~/.bashrc
     - conda info
     - conda create --name pangeo  python=3.7
     - conda activate pangeo
     - conda install xarray dask scipy zarr netcdf4 ipython jupyter matplotlib pandas numba ipykernel nodejs
     - conda install cartopy
     - conda install -c conda-forge papermill
     - conda install -c conda-forge cmocean
     - python -m ipykernel install --user --name pangeo --display-name pangeo
     - jupyter labextension install dask-labextension
     - jupyter serverextension enable --py --sys-prefix dask_labextension
     
 
   - on the first time follow : https://gricad-doc.univ-grenoble-alpes.fr/notebook/hpcnb/
   - then, for me the steps are :
     - login : ssh f-dahu.ciment
     - oarsub -I --project data-ocean -l /core=10,walltime=2:00:00
     - conda activate pangeo
     - jupyter notebook
     - in a new terminal, ssh -fNL 8887:dahuX:8888 dahu.ciment -L 8686:dahuX:8686 (dashboard) , X number of the node given with oarsub
     - in chrome, http://localhost:8888/?token=0707924ea352afc4a19ff086a94266101a57e56754072340
     - to kill the tunnel on local machine : lsof -ti:8887 and 8686 then kill the process
    
 ## Nix : package managment
 
   - doc : https://gricad.github.io/calcul/nix/tuto/2017/07/04/nix-tutorial.html
   - install a package : nix-env -i python3.7-dask-2.10.1
   - list of all packages available on the cluster : nix-env -qaP | grep dask
   - list of the packages I have installed : nix-env -qs

