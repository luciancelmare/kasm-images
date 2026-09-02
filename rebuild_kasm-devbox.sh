
docker image rm luciancelmare/kasm-devbox:v3.1

#docker build --no-cache -f ./kasm-images/devbox/dockerfile  -t luciancelmare/kasm-devbox:v3.0 .
docker build -f ./kasm-images/devbox/dockerfile  -t luciancelmare/kasm-devbox:v3.1 .

#docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-devbox:v1.1
docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-devbox:v3.1
