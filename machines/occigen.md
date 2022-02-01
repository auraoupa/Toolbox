# All the tricks for occigen

## Conda environment with conda-pack

  - set-up the environment
    - on another linux machine (meom, cal1) :
       - set-up the conda environment normally (conda create, conda install)
       - conda install -c conda-forge conda-pack
       - conda pack -n my_env
    - on occigen, in /scratch/cnt0024/hmg2840/albert7a/DEV/git/conda-pack
       - mkdir -p my_env
       - tar -xzf my_env.tar.gz -C my_env
       - cond (add conda path to the PATH)
       - source my_env/bin/activate
       - python -m ipykernel install --user --name my_env --display-name my_env

  - use the environment
    - on occigen, in /scratch/cnt0024/hmg2840/albert7a/DEV/git/conda-pack
       - cond
       - source my_env/bin/activate
       - jupyter notebook, ipython or python
       
## Jupyter notebooks on occigen

  - direct launch
     - bug : 'La connexion a échoué' dans firefox
     - solution : se logguer sur le même noeud de login que de là où on ouvre la fenêtre jupyter

  - visualization node :
     - Log into visu: ssh username@visu.cines.fr (from cal1 if you are on a private network).
     - Type the command vizalloc -m vnc -t 360, it will launch a job on the VISU nodes (not possible if you already have a job running...) for 360 minutes (6 hours). You can check your allocation with the command vizqueue. If you get the message : 'Problem during session initialisation. Please contact CINES support team', read the debug part below
     - A node has been allocated to you for instance visuX.cines.fr:1 where "X" should be a number between 1-4.
     - Log into this node with ssh username@visuX.cines.frfor instance from a separate Terminal (via cal1), and there navigate to your directories and launch a jupyter notebook --no-browser.
     - In a separate Terminal (at this point, this should be your third Terminal window), activate ssh local forwarding: ssh -L 5901:visuX.cines.fr:5901 username@ige-meom-cal1.u-ga.fr.
     - In your local environment, activate TurboVNC and access localhost:5901 where you will be prompted to enter your Occigen username and password. You now have access to a virtual desktop in which you can launch a browser (type firefox in a terminal).
     - In the browser, enter the notebook address you were given when you launched it (no copy-paste allowed so be careful with the syntax of the token!!).
