### Forgecraft

![Forge logo](https://raw.githubusercontent.com/Bahaika/docker-forgecraft/master/forge.png)

#### Usage

Simply start the container with a volume on `/minecraft`. The container will install all the files for minecraft/forge inside this folder and then, you'll be able to customize your installation with ease. You also can add JVM arguments directly to the container while using the `docker run` command.

```
docker run -d -p 25565:25565 \
  -v /mnt/volumes/minecraft:/minecraft \
  --name=minecraft bahaika/forgecraft:1.7.10-10.13.4.1558
```

With JVM arguments :

```
docker run -d -p 25565:25565 \
  -v /mnt/volumes/minecraft:/minecraft \
  --name=minecraft bahaika/forgecraft:1.7.10-10.13.4.1558 -Xmn512M -Xmx2048M
```
