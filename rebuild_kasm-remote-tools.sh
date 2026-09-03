
docker image rm luciancelmare/kasm-remote-tools:v1.0

#docker build --no-cache -f ./kasm-images/remote-tools/dockerfile  -t luciancelmare/kasm-remote-tools:v1.0 .
docker build -f ./kasm-images/remote-tools/dockerfile  -t luciancelmare/kasm-remote-tools:v1.0 .

#docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-remote-tools:v1.1
docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-remote-tools:v1.0

docker push luciancelmare/kasm-remote-tools:v1.0
