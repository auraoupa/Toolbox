  - change permissions for directories :
    -  ```chown -R username somedir```
    - ```chgrp -R groupname somedir```
    - ```chown -R username:groupname somedir```
    - ```ls -n : affiche les uid et groupe id en chiffre```

  - remote directories as local :
     - ```sshfs login@remote:/dir /local/dir/already/created```
     - ```fusermount -u /path/to/umount```

 - screen
    - open a new session : ```screen -S name``` 
    - exit and let it run in the background : ctrl+a+d
    - list the sessions already opened : ```screen -ls ```, if you do it on a supercomputer be sure to land on the same login node
    - reopen the session : ```screen -r name```
    - close permanently : ctrl+x or ```exit```

 - awk -F_ '{print $1}'
 - sed "s/truc/$machine/g"
 - pwd -P : show the real path !

 - imagemagick :
   - ```identify map-final-state-run-BBM00-siconc.png ```  
   -  ```montage Fig_2a* Fig_2b* Fig_2c* -geometry 3072x1024 -tile 1x3 -quality 100 Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png``` geometry c'est la taille d'un élément
   -  ```convert Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png -trim -bordercolor White -border 20x10 +repage Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png```

 - wget : ``` wget https://ige-meom-opendap.univ-grenoble-alpes.fr/thredds/fileServer/meomopendap/extract/eNATL60/eNATL60-BLB002/eNATL60/UVvertmean1d/eNATL60-BLB002_y20{09..10}m{01..12}d{01..31}.1d_Uvertmean0-10m.nc  ```

 - compter le nombre d'inode : ```du --inode```
 - lister les répertoires : ```ls -d */```, récupérer dernière partie d'un chemin : ```basename $path```

 - renommer répertoires avec 6 digits :

```bash

for dir in $(ls -d */); do
  ni=$(basename $dir | awk -F- '{print $1}')
  nf=$(basename $dir | awk -F- '{print $2}')
  nbi=${#ni}
  nbf=${#nf}
  if [ $nbi -eq 5 ]; then
    if [ $nbf -eq 5 ]; then
      mv ${ni}-${nf} 0${ni}-0${nf}
    else
      mv ${ni}-${nf} 0${ni}-${nf}
    fi
  fi
done
```

  - sum :
```bash
num=$((num1 + num2))
num=$(($num1 + $num2))       
num=$((num1 + 2 + 3))      
num=$[num1+num2]
num=`expr $num1 + $num2`
```


