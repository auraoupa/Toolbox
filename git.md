## Initialize a repo

In a local repo :
```bash
git init
git add . #make a .gitignore
git remote add origin URL
git push --set-upstream origin master
```

## .gitignore

**/truc -> everywhere

## About git branches

 - check all the branches : ```git branch -a```

 - get all the branches of one repo on a local machine : 

```
git checkout remotes/origin/issue9_clang_format
git checkout issue9_clang_format (or git switch)
```
 - create new branch from some branch : get on branch1 then ```git checkout -b subbranch_of_b1 branch1```
 - push your new branch on github : 

```
git add *
git commit -m 'comment'
git push --set-upstream origin subbranch_of_b1
```
  - update a branch from another : checkout on the destination branch and  ```git merge origin-branch```


## Cancel adding and committing files


```
git rm --cached eORCA05/BUILD/HGR/mkbathy05
git commit --amend -C HEAD
git push ...
```

## Get commit hash of a repo

```
git rev-parse --short HEAD
```

## Revert to a previous version

  - get commit hash
  - git reset --hard hashcommit
  - git push --force origin master

## Git and github

 - Add a SSH key and replace in .git/config ```https://github.com```by ```ssh://git@github.com```

## Building website with github-pages
https://fabienmaussion.info/git-jekyll-ws

My template : https://github.com/alshedivat/al-folio

https://jekyllrb.com/docs/installation/macos/
gem install jekyll bundler
