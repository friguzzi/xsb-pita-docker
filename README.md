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
