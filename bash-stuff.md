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
```
montage Fig_2a* Fig_2b* Fig_2c* -geometry 3072x1024 -tile 1x3 -quality 100 Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png
convert Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png -trim -bordercolor White -border 20x10 +repage Fig_2-NATL_TSG_tracer_gradients_JFM_1x1.png
```
