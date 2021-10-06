# Opal
Library with set of misc code to automatize builds.

# Documentation
## Import Opal
  ```clojure
(import opal)
```
## Defining submodules
> main_build.janet
  ```clojure
(import opal)

(subdir "nameofsubdir")
```
> nameofsubdir/build.janet

  ```clojure
(import opal)

(define-subdir "nameofsubdir")
 ;; content of your script
(end-subdir)
```
## Installing data

  ```clojure
(import opal)

(install-data "icons/myicon.svg" "/usr/local/data/icons/scalable/apps/myicon.svg")
```