(defn subdir
  "A function that imports the build.janet file from a subdirectory."
  [dir]
  (import* (string "./" dir "/build") :prefix ""))
