# OG-Docker
Docker for Developers: a containerized presentation

build with: `docker build . -t presentation`
run with: `docker run -p 8000:8000 presentation`
for development purposes, use: `docker run --name pres --rm -p 8000:8000 -v c:/Source/OGDocker/slides:/opt/presentation/slides presentation`
when in dev mode, go into container and manually `ln -s slides/index.html index.html`
