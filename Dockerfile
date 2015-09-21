FROM java:8

RUN apt-get update
RUN apt-get -y install wget bzip2

WORKDIR /opt
RUN wget https://aphyr.com/riemann/riemann-0.2.10.tar.bz2
RUN tar xvfj riemann-0.2.10.tar.bz2
RUN mv riemann-0.2.10 riemann
WORKDIR riemann

# To use this image mount your config file as a volume to /opt/riemann/etc/riemann.config

EXPOSE 5555
EXPOSE 5555/udp
EXPOSE 5556
ENTRYPOINT ["bin/riemann"]
CMD ["start"]
