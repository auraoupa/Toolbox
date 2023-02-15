# Working on Jean Zay

http://www.idris.fr/jean-zay/

 - mon login : rote001
 - mon mdp : lil-date
 - projet Melody : 101030
 - projet JMB et Stephanie : A0060101279
 - me logguer from meom : ssh -CX rote001@jean-zay.idris.fr
 
## Gestion des projets

  - mes projets : idrproj
    - egi :JMB et Stéphanie
    - yrf : Melody
    - ote : Drakkar ?
    - eee : projet Julien ?
    - cli : projet Thierry ?
  - changer de projet par défaut : idrproj -d grp1
  - changer de projet actif : eval $(idrenv -d grp1)
  
## Quotas

- idrquota -w -p egi : pour l'espace work dans le projet egi

## Jobs

- demander des ressources interactives dans la queue compil : ```srun --pty --ntasks=8 --cpus-per-task=1 --hint=nomultithread --partition=compil --time=00:30:00 --account=cli@cpu bash```
- checker le temps d'éxecution d'un job : ```sacct -j 736869 --format=jobid,elapsed,state```

## Faire tourner le serveur jupyterhub

**Update new jupyterhub server**
   - go on a machine recognized by jean-zay (or make a tunnel to cal1 : ```ssh -ND 3128 alberta@ige-meom-cal1.u-ga.fr```)
   - open https://jupyterhub.idris.fr/ in a browser (with proxy parameters set to SOCKS with port 3128)

   - [ssh to cal1, ssh meom] from lgge194 : ssh -CY rote001@jean-zay.idris.fr
   - ```module load python/3.7.3```
   - ```salloc --ntasks=1 --cpus-per-task=5 --account=egi@cpu --time=00:10:00 srun --pty bash``` ou ```salloc --ntasks=1 --cpus-per-task=40 --partition=prepost --account=egi@cpu --time=03:10:00 srun --pty bash```
   - idrlab or ```idrjup --notebook-dir=$WORK```
   - [on local machine, ssh -ND 3128 alberta@ige-meom-cal1.u-ga.fr
   - in the firefox browser parameters/advanced/ set up a proxy : SOCKS, server name = localhost, port 3128]
   - https://jean-zay-srv2.idris.fr/
   
## Les resssources dans le jupyterhub
   - on choisit le type de noeud en lançant le premier job sur lequel on fait tourner le jupyterhub
   - on peut soit piocher dans le noeud choisi (un seul noeud) ou soumettre un autre job avec dask-jobqueue (plusieurs noeuds possibles)
   - syntaxe jobqueue : SLURMCluster(cores=1, memory='170GB',job_extra=['--account=yrf@cpu',
                                  '--ntasks=1','--cpus-per-task=1'], project='PerfTestPangeo', walltime='02:30:00') en rajoutant '--partition=prepost' dans job_extra
   - si le premier job est sur un noeud normal, jobqueue sur noeuds normaux, idem prepost      
                            
### Ressources
 
  - http://www.idris.fr/eng/jean-zay/cpu/jean-zay-cpu-calculateurs-disques-eng.html
  - http://www.idris.fr/jean-zay/cpu/jean-zay-cpu-doc_multi_projet.html
  - http://www.idris.fr/jean-zay/pre-post/jean-zay-jupyter-notebook.html
  - http://www.idris.fr/jean-zay/pre-post/jean-zay-jupyterhub.html
  
