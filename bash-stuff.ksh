chown -R username somedir
chgrp -R groupname somedir
chown -R username:groupname somedir

ls -n : affiche les uid et groupe id en chiffre

sshfs login@remote:/dir /local/dir/already/created
fusermount -u /path/to/umount

 - screen
    - open a new session : ```screen -S name``` 
    - exit and let it run in the background : ctrl+a+d
    - reopen the session : ```screen -r name```
    - close permanently : ctrl+x or ```exit```
