# Cluster HAL @ CNES


 - Wiki : https://gitlab.cnes.fr/hpc/wikiHPC/wikis/home, https://gitlab.cnes.fr/hpc/wikiHPC/wikis/jupyter
 - notebooks : https://gitlab.cnes.fr/inno/rt-nouvelles-technos-distrib/tree/master/notebook

 - connexion : `alberta@hal.cnes.fr`, mpd `T!gr8888T!gr8888`

 - les données eNATL60 sont sur : `/work/ALT/odatis/eNATL60`

   - pour les rendre visibles par tous : `chmod  -R a+r repo/`

- Pour faire fonctionner le jupyterhub :
	-  se connecter et selectionner un noeud de visualisation
	-  la commande depuis le même terminal (qui nous a rendu la main car ca se deconnecte aussitot) : `ssh -N -L 8889:visu10.sis.cnes.fr:5902 alberta@hal.cnes.fr` (59 suivis des 2 chiffres dans loutput de la connection)
	-  client vnc (turbovnc sur ma machine) localhost:8889, cela ouvre un émulateur windows dans lequel on ouvre mozilla
	-  adresse` https://jupyterhub.sis.cnes.fr`
	-  le wiki : `https://gitlab.cnes.fr/hpc/wikiHPC/wikis/jupyter`
	-  exemple de notebook : `https://gitlab/cnes.fr/inno/rt-nouvelles-technos-distrib/`

-  Pour récupérer les repo git :
	-  faire un montage sur cal1 : `sshfs alberta@hal.cnes.fr:/home/ad/alberta/git /mnt/meom/workdir/albert/HAL/homegit` par exemple (le pépertoire cible doit exister
	-  sur cal1, aller dans le repo et faire le git clone ou pull ou push

- Environnments conda (https://gitlab.cnes.fr/hpc/wikiGitlab/wikis/conda-artifactory)
    - module load conda
    - conda install --override-channels -c https://artifactory.cnes.fr/artifactory/api/conda/conda matplotlib
