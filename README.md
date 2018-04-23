# docker-crypto-wallets
This is a collection of crypto currency wallets built in docker containers to use on *nix systems system, with graphical interfaces

My goal for this project is to have a nice and convention way to quickly access all my crypto currency assets.

Evently, the project will evolve to include many, many, many more wallet, I plan to add 3 or more wallets a day.
Also, I am working on a crypto vault that will give you a nice graphical interface where you be able to securely encrypt all of your wallets.

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