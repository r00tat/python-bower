# python-bower
This image is intented to run python apps which need bower as a container. This container can also be used to automate the build process.

The image includes the following software

  * python 2.7
  * nodejs 6
  * npm
  * bower
  * gcloud SDK
  * gcloud python Appengine SDK


## running the container

```
docker run --rm paulwoelfel/python-bower python -V
```
