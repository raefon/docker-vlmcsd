FROM alpine:3.7

ENV LUID=1000

COPY ["assets/","/"]

RUN apk update \
	&& apk add shadow \
	&& useradd --uid ${LUID} --shell /sbin/nologin -N -d /config app \
	&& chmod 755 /usr/bin/vlmcs /usr/bin/vlmcsd /start.sh

USER app
CMD ["/start.sh"]