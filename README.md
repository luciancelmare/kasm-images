# kasm-images

## Available Kasm Images:

> [luciancelmare/kasm-devbox:v3.1](https://hub.docker.com/repository/docker/luciancelmare/kasm-devbox/general)
>
> [luciancelmare/kasm-kitty](https://hub.docker.com/repository/docker/luciancelmare/kasm-kitty/general)



## Build your custom docker image - example
```bash
docker build -t luciancelmare/kasm-devbox:v1.0 .
```

## Test is locally to see if it's working
```bash
docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password luciancelmare/kasm-devbox:v1.0
```
after container is running access it via: https://IP:6901 - with username: kasm_user and password you set int the VPN_PW

```bash
https://127.0.0.1:6901
```

## Push to Docker Hub
Login - fallow the instruction on screen
```bash
docker login
```

## Push the image:
```bash
docker push luciancelmare/kasm-devbox:v1.0
```

