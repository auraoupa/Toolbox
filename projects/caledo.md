## 15/09/2020

 - github repo : https://github.com/AurelieAlbert/caledo_agrif_nesting
 - repo on cal1 : /mnt/meom/workdir/alberta/CALEDO/NESTING_TROPICO05
 

## 12/08/2020 

Installation sur cal1 :
   - téléchargement de nemo : ```svn co http://forge.ipsl.jussieu.fr/nemo/svn/NEMO/releases/release-4.0/``` dans /mnt/meom/workdir/alberta/NEMO
   - compilation du tool NESTING : ```./maketools -m meom_ifort -n NESTING```dans /mnt/meom/workdir/alberta/NEMO/release-4.0/tools avec le bon arch-meom_ifort.fcm dans /mnt/meom/workdir/alberta/NEMO/release-4.0/arch
   

## 20/07/2020 Mail de Laurent 

Surement m'aider pour la partie AGRIF, notre joujou de dévelopment ca sera donc: TROPICO05 / CALEDO10 (même facteur de 5 entre grille mère et fille que pour le projet TROPICO12 / CALEDO60...). Le truc tourne sur CAL1 sans problème...

Je fignole le run TROPICO05, les BDY marchent enfin, je te donnerai le feu vert et on s'appellera ou je passerai pour un sauna au bureau, mais si tu veux commencer à regarder mon setup, et te familiariser avec ce que j'ai commencé à faire, et éventuellement me dire que j'ai fait de la merde ça et là, voici:

- NEMO version: r4.0-HEAD (forge.ipsl.jussieu.fr/ipsl/forge/projets/nemo/svn/NEMO/releases/r4.0/r4.0-HEAD)

- "TROPICO05-I" sur CAL1: /mnt/meom/workdir/brodeau/TROPICO05/TROPICO05-I

- mon "production directory" sur CAL1: 
/mnt/meom/workdir/brodeau/tmp/tmp/TROPICO05/TROPICO05-TRPC5B0_prod

- output directory sur CAL1, viens de finir 1 an avec les 4 BDYs on :D :
/mnt/meom/workdir/brodeau/tmp/TROPICO05/TROPICO05-TRPC5B0-S

Et important, tu as peut être vu sur le doc partagé avec les toulousains leur réponse:
https://docs.google.com/document/d/1Xw9M7WB5mUHcKR6tPdy8ZQO1h119DerZ/edit#heading=h.1fob9te

Ensuite pour finir j'ai mis leur bathy ici sur CAL1:
/mnt/meom/workdir/brodeau/data/bathy/Caledo_team/test_MNT.nc4

Donc avec les coordonnées de la boîte fille et cette bathy on a déjà de quoi commencer à faire un AGRIF (avec même nombre de niveaux verticaux of course).
