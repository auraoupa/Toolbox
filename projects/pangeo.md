# PANGEO deployments 

## Tests des performances des différents déploiements

- dask only
- dask+xarray
- open zarr

## Les différents déploiements

### Sur occigen

  - au 20/04/2020 : problème pour notebooks directement sur la machine, localhost:8888 ne s'ouvre pas dans firefox
  - au 20/04/2020 : problèmes pour session visualisation : , de plus pas de dask-jobqueue (on est sur un noeud de calcul) ni de dashboard (pas de tunnel depuis le noeud)
  
### Sur gricad

  - au 20/04/2020 : les données sur bettik pas possible de tout mettre, déjà bien plein
  - au 20/04/2020 : pas de dask jobqueue depuis le noeud sur lequel on fait tourner le notebook
  
### Sur jean zay
### Sur cal1 (jupyterhub)
### Sur le cloud


## Les données eNATL60/NATL60 sur le cloud

La commande qui fait bien le transfert : gsutil -u pangeo-181919 -m mv gs://pangeo-data/NATL60-CJM165-SSV-1h-1m2deg2deg gs://pangeo-meom/


### Liste des répertoires déjà sur pange-meom au 10 avril 2020
  - eNATL60-I
  - eNATL60-BLB002-SSU-1h
  - eNATL60-BLBT02-SSV-1h
  - eNATL60-BLBT02-SSU-1h
  - eNATL60-BLBT02-SSH-1h
  - NATL60-I  
  
### Liste des répertoires sur pangeo-data que l'on veut sur pangeo-meom 

  - [ ] NATL60-CJM165-SSH-1h-1m2deg2deg/
  - [x] NATL60-CJM165-SSH-1h-2D
  - [ ] NATL60-CJM165-SSU-1h-1m2deg2deg
  - [ ] NATL60-CJM165-SSV-1h-1m2deg2deg
  - [x] eNATL60-BLB002-SSU-1h
  - [x] eNATL60-BLBT02-SSU-1h
  - [x] eNATL60-BLBT02-SSV-1h
  - [x] eNATL60-BLBT02X-ssh
  - [x] eNATL60-I


### Inventaire des zarrs au 24 mars 2020

#### Sur le cloud
  - NATL60-CJM165-SSH-1h-1m2deg2deg/
  - NATL60-CJM165-SSH-1h-2D
  - NATL60-CJM165-SSU-1h-1m2deg2deg
  - NATL60-CJM165-SSV-1h-1m2deg2deg
  - eNATL60-BLB002-SSU-1h
  - eNATL60-BLB002-SSV-1h
  - eNATL60-BLBT02-SSU-1h
  - eNATL60-BLBT02-SSV-1h
  - eNATL60-BLBT02X-ssh
  - eNATL60-I
  - eORCA025-I
  - eORCA1-I
  - zarr-eNATL60, avec zarr_eNATL60-BLB002-SSU-1h-y2009m07-09 y2010m01-03 dedans
  - zarr_NATL60-CJM165_SSU_1h_y2013m07-09
    
  
#### Sur cal1
  - eORCA025 : /mnt/meom/workdir/albert/eORCA025/zarr_mesh_mask_eORCA025
  - eORCA1 : /mnt/meom/workdir/albert/eORCA1/zarr_IPSLCM6ALR_eORCA1.2_mesh_mask
  - in /mnt/meom/workdir/albert/eNATL60/zarr :
    - eNATL60-BLB002-SSU-1h
    - eNATL60-BLBT02-SSH-1h
    - eNATL60-BLBT02-SSU-1h
    - eNATL60-BLBT02-SSV-1h
    
#### Sur occigen
  - /store/albert7a/eNATL60/zarr :
   - eNATL60-BLB002-SSH-1h
   - eNATL60-BLB002X-SSH-1h
   - eNATL60-BLB002X-SSH-1h-bis
   - eNATL60-BLBT02-SSH-1h
   
#### Check si zarr ok
 
 https://github.com/auraoupa/zarr-check-all-platforms

### Pour la conversion en zarr

 - https://github.com/auraoupa/make-zarr-occigen
 - check taille chunks, etc .. : https://gitlab.cnes.fr/inno/rt-nouvelles-technos-distrib/blob/master/notebook/conversion_netcdf_to_zarr.ipynb

#### Ressources

 - https://github.com/pangeo-data/pangeo-datastore/issues/8

### Les commandes liées au cloud

  - gcloud auth login
  - gcloud init : mon projet est pangeo-181919, la région est US-CENTRAL1
  - gsutil -u pangeo-181919 ls -a gs://pangeo-meom
  - gsutil -u pangeo-181919 -m cp -r /mnt/alberta/equipes/IGE/meom/workdir/albert/eNATL60/zarr/eNATL60-BLBT02-SSH-1h gs://pangeo-meom/

#### Ressources

[Google Cloud Platform](https://console.cloud.google.com/storage/browser/pangeo-data/)

[Cleaning out the pangeo-data google cloud storage bucket - Cloud - Pangeo](https://discourse.pangeo.io/t/cleaning-out-the-pangeo-data-google-cloud-storage-bucket/353)

[ocean: Pangeo Oceanography Dataset Catalog — Pangeo Catalog  documentation](https://pangeo-data.github.io/pangeo-datastore/master/ocean.html)

[GitHub - pangeo-data/pangeo-datastore: Pangeo Cloud Datastore](https://github.com/pangeo-data/pangeo-datastore)

[auraoupa/pangeo-data-catalog · GitHub](https://github.com/auraoupa/pangeo-data-catalog.git)

file:///Users/auraoupa/Downloads/Brodeau-LeSommer_ocean-modelling-splinter_SWOT-ST-2019.pdf
