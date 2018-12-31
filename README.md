# xsb-pita-docker
xsb with pita docker image

Build the image with

```
cd xsb-pita-docker
docker build -t xsb .
```

Run it with
```
docker run -it xsb bash
```

Available on Docker Hub:
 
```
docker login
docker pull friguzzi/xsb
docker run -it friguzzi/xsb bash
```

Test it with
```
docker run -it xsb bash
root@564636fdc7ff:/# cd sw/xsb-src/packages/pita
root@564636fdc7ff:/sw/xsb-src/packages/pita# xsb
| ?- [testpita].
| ?- main.
```

See `typescript.txt`
