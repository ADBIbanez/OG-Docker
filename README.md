# OGD-Docker-Night
Docker for Developers: a containerized presentation (in Dutch)

build with: `docker build . -t presentation`

run with: `docker run -p 8000:8000 presentation`

for development purposes, use: `docker run --name pres --rm -p 8000:8000 -v c:/Source/OGDocker/slides:/opt/presentation/slides presentation`

when in dev mode, go into container and manually `ln -s slides/index.html index.html`

## Contents of this presentation
1. What is Docker and why do you care?
  - Containers vs. VMs
  - Base images, always the same, always up to date
  - Dockerfile -> Image -> Container
  - (is it buzzword-complete?)
  - Services defining containers (docker compose)
2. Docker Roadshow: a brief report
  - HPE
  - Signing your containers securely
3. What are the benefits for developers?
  - Windows running Rails without actually running Rails
  - Does not (typically) interfere with app code/'true' developers
  - No more Powerpoint!
4. Demo of an app running on Docker
5. Next steps?
  - Bringing all apps under Docker control
  - Yeoman Docker: Container-ception
  - Our own Image Repo
