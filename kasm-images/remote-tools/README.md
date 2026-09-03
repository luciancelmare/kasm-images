# KASM-REMOTE_TOOLS

## Build your custom docker image
```bash
docker build -t luciancelmare/kasm-remmina:v1.0 .
```

## Test is locally to see if it's working
```bash
docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-remmina:v1.0
```
after container is running access it via: https://IP:6901 - with username: kasm_user and password you set int the VPN_PW

```bash
https://10.10.12.62:6901
```

## Push to Docker Hub
Login - fallow the instruction on screen
```bash
docker login
```

Push the image:

```bash
docker push luciancelmare/kasm-remmina:v1.0
```


### Installed applications

> Kitty Terminal
>
> Remmina (RDP and SSH connections)
> 
> AnyDesk
>
> Microsoft EDGE
>
> FileZilla
>
>Parsec
>
>RustDesk


