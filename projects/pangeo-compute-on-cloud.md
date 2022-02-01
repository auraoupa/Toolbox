# Compute on pangeo cloud

https://ocean.pangeo.io

## 2020-04-21

 - test ouvertures des zarrs migrés depuis pangeo-data vers pangeo-meom, notamment NATL60-CJM165-SSH-1h-1m2deg2deg qui a été mouvé par à coups -> les données sur pangeo-meom ne sont pas accessibles ! ticket à Charles Blucas
 - nouveau système d'ouverture des données : https://medium.com/pangeo/pangeo-with-dask-gateway-4b638825f105, ca plante sur ocean.pangeo.io pour l'instant -> ticket à TomAugsburger sur https://github.com/TomAugspurger/pangeo-dask-gateway 
 - transfert des données pangeo-data vers pangeo-meom fini
