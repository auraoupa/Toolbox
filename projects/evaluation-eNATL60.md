# Evaluation des runs eNATL60

## 2020-09-28 repo github doi

https://github.com/ocean-next/eNATL60

https://zenodo.org/record/4032732#.X3HjyKY6_mE


## 2020-06-03 diags variance fine échelle de la vorticité de surface sur occigen

Toujours pas au point car le nombre de tâches que doît effectuer dask est beaucoup trop important, curl puis filtrage puis élévation au carré puis moyenne temporelle :
  - chunks = (1,1000,1000) => curl 831 109 tasks, filt 2 361 517 tasks, hpcurl2m 2 418 838 tasks !
  - chunks = (10,1000,1000) => curl 104 593 tasks, filt 295 894 tasks, hpcurl2m 303 121 tasks
  - chunks = (100,1000,1000) => curl 35 401 tasks, filt plante

=> stand by pour l'instant, focus sur les profils TS à partir de maintenant.

## 2020-05-13 Nouvelle dynamique

Construction d'un repo github avec toutes les infos sur les runs eNATL60 et les diags, écriture du papier dans la foulée si toujours motivés : https://github.com/ocean-next/eNATL60

Egalement meeting tous les mecredi matin pour se donner un coup de pied aux fesses !

## 2020-03
d’après le manuscrit de Julien : https://github.com/lesommer/2017-paper-natl60-gmd

- [ ] comparaison profils EN4
- [ ] sections OVIDE
- [x] rmsssh, madt AVISO : https://github.com/AurelieAlbert/eNATL60-plots-paper/tree/master/rmsssh-AVISO
- [ ] velocity cross, EKE section Gulf Stream
- [ ] wavenumber spectra, winter, summer, annual
- [ ] vorticity variance
- [ ] comparaison gradients TSG

spécifique au run avec marée

- [x] diag marées, amplitude + phase à différentes fréquences : https://github.com/AurelieAlbert/eNATL60-plots-paper/tree/master/amp-phase-tides-FES
