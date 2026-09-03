
docker image rm luciancelmare/kasm-kitty:v1.3


docker build -f ./kasm-images/kitty/dockerfile  -t luciancelmare/kasm-kitty:v1.3 .


docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=adm123 luciancelmare/kasm-kitty:v1.3


# docker push luciancelmare/kasm-kitty:v1.3