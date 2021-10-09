### opal.janet
###
### Library with set of misc code to automatize builds.
###
### Copyright 2021 © Jeyson Antonio Flores Deras

(defn subdir
  "A function that imports the build.janet file from a subdirectory."
  [dir]
  (import* (string "./" dir "/build") :prefix ""))

(defn install-data
  "A function that install a specific file in a specific folder"
  [src-file destdir]
  (os/shell (string "sudo cp " src-file " " destdir)))

(defn define-subdir
  "A function that sets up the working path for the subdirectory."
  [dir]
  (os/cd dir))

(defn end-subdir
  "A function that goes back to the original working path"
  []
  (os/cd ".."))

(defn set-build-path
  "A function that sets the build path according to the variable given"
  [args]
  (if (= true (get args "FLATPAK"))
    (os/setenv "BUILD_PATH" "/app/")
    (os/setenv "BUILD_PATH" "/usr/")))

(defn get-build-path
  "A function that retrieves the build path"
  []
  (os/getenv "BUILD_PATH"))
