docker run -d -m 256M --memory-swap=256M  -v ~/default:/root/.ehforwarderbot/profiles/default --network=host --restart=always ghcr.io/aiastia-bot/efb2:master


docker run -d -v /home/ubuntu/default:/root/.ehforwarderbot/profiles/default --network=host --restart=always ghcr.io/aiastia-bot/efb2:master
