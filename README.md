docker run -d -m 256M --memory-swap=256M  -v ~/default:/root/.ehforwarderbot/profiles/default --network=host --restart=always docker pull ghcr.io/aiastia-bot/efb2:master
