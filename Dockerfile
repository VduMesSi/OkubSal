FROM alpine:latest

ADD v2.zip /v2.zip
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
