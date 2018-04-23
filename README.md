# docker-crypto-wallets
This is a collection of crypto currency wallets built in docker containers to use on *nix systems system, with graphical interfaces

## wallets
* Neon 
* Exodus
* Eidoo

## Instructions
To install:
```bash
git clone https://github.com/Hoodchain/docker-crypto-wallets
cd wallets
bash ./scripts/setup.sh
```

To run:
```bash
scripts/wallets.sh <wallet_name_in_lower_case>
```

### DISCLAIMER:
**You must have docker installed to use containers**

This has only been tested using debian stretch. Before you proceed to using the wallet, please look in the docker-compose.yml file and each Dockerfile