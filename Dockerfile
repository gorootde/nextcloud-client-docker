FROM alpine:latest

ARG USERNAME=nextcloud
ARG UID=1000
ARG GID=1000

ENV USER=${USERNAME}
ENV UID=${UID}
ENV GID=${GID}
ENV NEXTCLOUD_USERNAME=user
ENV NEXTCLOUD_PASSWORD=password
ENV NEXTCLOUD_URL=""
ENV SYNC_SLEEP=500

VOLUME [ "/data" ]

RUN addgroup -g $GID ${USER} && adduser -G ${USER} -D -u ${UID} ${USER}
RUN apk update && apk add --no-cache nextcloud-client

ADD sync.sh /usr/local/bin

USER ${USERNAME}

CMD /usr/local/bin/sync.sh
