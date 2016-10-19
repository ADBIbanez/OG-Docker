FROM debian:jessie

RUN apt-get -qqy update
RUN apt-get -qqy install git nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /opt
RUN git clone https://github.com/hakimel/reveal.js.git presentation
WORKDIR /opt/presentation
RUN npm install -g grunt-cli
RUN npm install

ADD slides /opt/presentation/slides/
ADD images /opt/presentation/images/
ADD videos /opt/presentation/videos/
RUN rm index.html
RUN ln -s slides/index.html index.html

EXPOSE 8000

CMD ["grunt","serve"]
