# Don't Starve Together - An example dedicated server

I built off of [dstacademy/docker-dontstarvetogether](https://github.com/fairplay-zone/docker-dontstarvetogether) and wanted to share my configuration with others.

This works on Ubuntu Server 18.04.

## Getting Started

### Install docker

**Note**: Do not use the snap version of docker. It sucks.

1. Make sure you install the proper docker, follow [this](https://docs.docker.com/engine/install/ubuntu/) or similar.
2. Make sure you install the latest docker compose, use pip.

```
pip install docker-compose
```

3. Make it sudo-less docker, see [here](https://docs.docker.com/engine/install/linux-postinstall/)

I'd recommend restarting your virtual machine.

### Configure

Now you have to configure three files, see below.

You can also mess with the rest of the configuration in docker-compose.yml.

#### 1. config.sh

This is self explanatory, comments within.

#### 2. Environment files

```
$ cat overworld.env
TOKEN=ThisYouHaveToGenerate_SeeBelow
PASSWORD=ThisIsYourServerPassword
ADMINLIST=ThisIsYourKleiAccountID,AnotherOne,SeeBelow
```

```
$ cat underworld.env
TOKEN=ThisYouHaveToGenerate_SeeBelow
ADMINLIST=ThisIsYourKleiAccountID,AnotherOne,SeeBelow
```

#### Token? Klei Account ID?

##### Token

This is a cluster token, you will need to generate it. Find it on your machine then copy and paste it into these env files.

See [the wiki](https://dontstarve.fandom.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers#Server_Tokens)

##### Account IDA

A players Klei UserID can be found my clicking "Account" in the bottom right of the main menu of DST.
