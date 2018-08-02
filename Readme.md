A docker/compose setup for valgrind and kcachegrind GUI.

### Setup

```
docker-compose build
```

### valgrind

Any file present in the `subject` folder will be available in the docker container for valgrind. For example, if a binary named `binx` is needed to be analysed, the following commands can be used:
```
$ cp /path/to/binx ./subject/
$ docker-compose run --rm valgrind binx
```
The necessary results will be available in the `subject` folder.

### kcachegrind

Any file present in the `subject` folder will be available in the docker container for kcachegrind as well. For example, if a binary named `binx` is needed to be analysed, the following commands can be used:
```
$ cp /path/to/callgrind.out.1 ./subject/
$ docker-compose run --rm kcachegrind callgrind.out.1
```

### Helper
A small utility is provided here to run a valgrind tool on a binary and open its results in kcachegrind.

```
./kgrind [TOOL] [EXECUTABLE] [ARGS]
```
e.g.,
```
./kgrind callgring sample/sample hello world
```
This is not intended the most perfect utility in the world, but is supposed to be an example of how to use the docker images present here.
