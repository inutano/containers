# Docker container for [jsonld-vis](https://github.com/scienceai/jsonld-vis/)

usage:

```
$ ls
example.jsonld
$ docker run -it -v $(pwd):/work -w /work inutano/jsonld-vis
root@container:/work# ls
example.jsonld
root@container:/work# /bundle example.jsonld
Hash: ???
Version: webpack 4.14.0
Time: 650ms
Built at: 2018-06-30 01:16:17
    Asset     Size  Chunks             Chunk Names
bundle.js  365 KiB    main  [emitted]  main
[../src/index.js] 7.53 KiB {main} [built]
[./example.json] 2.88 KiB {main} [built]
[./index.js] 211 bytes {main} [built]
    + 2 hidden modules
root@container:/work# exit
$ open jsonld-vis/html/index.html
```
