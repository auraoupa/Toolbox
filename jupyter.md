 - install the kernel in jupyter relative to the conda environment

```python -m ipykernel install --user --name env-jup --display-name env-jup```

 - import library from a reop :

```
GONZAG_DIR = '/home/jovyan/gonzag_cloud/gonzag' ; # get it there: https://github.com/brodeau/climporn
sys.path.append(GONZAG_DIR)
import gonzag as gz
```
