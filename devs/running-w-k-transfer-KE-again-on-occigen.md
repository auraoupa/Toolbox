# How to reproduce the diag of w-k spectrum of KE transfer for eNATL60-BLB002


## On occigen

### 2020-04-21
 
test de toutes les combinaisons possible nombre de workers + taille chunks -> toujours killed workers au omment du calcul de la fft

### 2020-04-20
 - pas possible d'avoir les zarrs de SSV toute la période (trop de fichiers) -> zarr ssv mensuels
 - test unitaire de calcul du spectre de U JFM : https://github.com/auraoupa/diags-freq-wavenumber/2020-04-20-AA-test-compute-V-spectrum-JFM-from-netcdf-BLB002-on-occigen-ipython.py
 - killed workers at the fft section, size of the chunks critical ? 
 - test with zarr instead of netcdf ? idem
