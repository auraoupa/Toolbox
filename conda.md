## Conda environments
 
 - ```conda info --envs```
 - ```conda create --name myenv --file spec-file.txt```
 - ```conda env create -f environment.yml```
 - ```conda list --explicit > spec-file.txt```

## Conda pack (to transfer apckages to an offline machine)

 - on the source machine :
   - ``` conda pack -n my_env```
   - ```scp env.tar.gz offline:~/.```
   
 - on the target machine :
   - ```mkdir -p my_env; tar -xzf env.tar.gz -C my_env```
   - ```./my_env/bin/python```
   - ```source my_env/bin/activate```
