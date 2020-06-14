# Dockerized Nextcloud client

![Docker Image CI](https://github.com/gorootde/nextcloud-client-docker/workflows/Docker%20Image%20CI/badge.svg)

A containerized nextcloud client for doing headless sync e.g. on a NAS.

Since nextcloud client doesn't support headless sync, this container uses an endless loop of subsequent single sync commands.

## Environment Variables

| Name               | Description                                                       |
| ------------------ | ----------------------------------------------------------------- |
| NEXTCLOUD_USERNAME | Username to use for login                                         |
| NEXTCLOUD_PASSWORD | Password used for login                                           |
| NEXTCLOUD_URL      | URL of the nextcloud instance                                     |
| SYNC_SLEEP         | Number of seconds to sleep between two subsequent sync operations |
