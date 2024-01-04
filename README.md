# DDv6

Regularly send your IPv6 address to a Discord channel using a webhook.

Gets public IPv4 and IPv6 addresses from [ipify](https://www.ipify.org/) using [curl](https://curl.se/).

## Usage

> [!NOTE]
> [*"IPv6 is only supported on Docker daemons running on Linux hosts."*](https://docs.docker.com/config/daemon/ipv6/)

```bash
INTERVAL=86400 \
WEBHOOK_URL=https://discord.com/api/webhooks/WEBHOOK_ID/WEBHOOK_TOKEN \
sudo docker run --net=host -e INTERVAL=$INTERVAL -e WEBHOOK_URL=$WEBHOOK_URL piotrpdev/ddv6:latest
```

## Build image

```bash
docker build -t piotrpdev/ddv6 .
```
