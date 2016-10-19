FROM debian:jessie

RUN apt-get -qqy update
RUN apt-get -qqy install git nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /opt
RUN git clone https://github.com/hakimel/reveal.js.git presentation
WORKDIR /opt/presentation
RUN npm install -g grunt-cli
RUN npm install

ADD index.html /opt/presentation/index.html
ADD images /opt/presentation/images/
ADD slides /opt/presentation/slides/

WORKDIR /opt/presentation

EXPOSE 8000

CMD ["grunt","serve"]
