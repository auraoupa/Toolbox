# Work done in the project IMMERSE : les diags fines échelles appliqués aux simus ensemblistes MEDWEST60

## 2020-07-21 : reprise diag TS profils ARGO sur Jean Zay avec osie pour colocalisation
  - nouveau repo github : https://github.com/AurelieAlbert/diags-CMEMS-on-jean-zay/blob/master/Profiles-EN4/README.md

## 2020-06-03 : fin variance fines échelles avec données extract MEDWEST60
  - problème du nombre d'opérations dans le calcul du curl puis du filtrage, dask n'arrive pas à gérer

## 2020-06-01 : reprise en main de Jean Zay avec données Steph
  - demande de 16 cores avec salloc --ntasks=1 --cpus-per-task=5 --account=egi@cpu --time=00:10:00 srun --pty bash
  - quelques tests pour variance fine échelle de la vorticité de surface

## 2020-05-26 : mail Stéphanie pour mise en place diag TS :

### Test du diag "Profiles TS" sur Jean Zay, appliqué à eNATL60 (sous-domaine MEDWEST)
  - "Diag Profiles TS"  (tel que réalisé pour CMEMS-GLO-HR et le papier NATL60).
  - Appliqué à l'extraction d'eNATL60 sur le domaine MEDWEST
  - Les outputs (sous-domaine) sont  accessibles ici: /gpfsstore/rech/egi/commun/MEDWEST60/extracted_eNATL60/
  - Les infos sur la grille: /gpfsstore/rech/egi/commun/MEDWEST60/MEDWEST60-I
  - Dates à considérer: du 2010-02-05 au 2010-03-06 (1 mois)
  - Questions: Est-ce que ce diag tient la route si appliqué sur 1 mois seulement? (combien de profiles?) Est-ce qu'eNATL60 se comporte correctement comparé aux profiles observés dans la région?


### Diag appliqué à une simulation MEDWEST60 non-perturbée

  - Les outputs sont ici : /gpfsstore/rech/egi/commun/MEDWEST60/MEDWEST60-GSL03-S/1h/
  - Même dates (1 mois)
  - Question: comment se comporte MEDWEST60 comparé à eNATL60 sur le même domaine?

### Diag appliqué à 1 membre d'une simulation d'ensemble MEDWEST60 perturbée

  - Les outputs sont ici : /gpfsstore/rech/egi/commun/MEDWEST60/MEDWEST60-GSL14-S/1h/
  - Même dates (1 mois)
  - Question: comment se comporte MEDWEST60 perturbé vs non-perturbé?

### Diag appliqué à chacun des 20 membres de la simulation d'ensemble ci-dessus

   - Outputs indiqués ci-dessus (MEDWEST60-GSL14), les différents membres ont leurs noms de fichiers commençant par le numéro du membre: par exemple  001MEDWEST60-GSL14...,  002MEDWEST60-GSL14... etc.
  - Même dates (1 mois)
  - Questions: Comment se compare l'enveloppe du "spread spatial" pris en compte par le diag d'Aurélie avec l'enveloppe du spread d'ensemble? Le spread d'ensemble pourrait-il servir à justifier ou même, à mieux "calibrer" le rayon de la sphère spatiale du diag?


## 2020-04-06 : Setting up on jean zay, petit test fine scale sur outpout medwest

  - notebook : https://github.com/AurelieAlbert/diags-CMEMS-on-jean-zay/blob/master/fine-scale-vort-var/2020-04-02-AA-test-on-jean-zay.ipynb
