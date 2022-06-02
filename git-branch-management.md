# About git and the branches

 - check all the branches : ```git branch -a```

 - get all the branches of one repo on a local machine : ```git checkout remotes/origin/issue9_clang_format```
 - create new branch from some branch : ```git checkout -b subbranch_of_b1 branch1```
 - push your new branch on github : 

```
git add *
git commit -m 'comment'
git push --set-upstream origin subbranch_of_b1
```



## Revert to a previous version

  - get commit hash
  - git reset --hard hashcommit
  - git push --force origin master
