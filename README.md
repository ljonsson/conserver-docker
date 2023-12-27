Run Conserver (<https://github.com/bstansell/conserver>) in a container.

Create directory structure

```text
mkdir -p ~/conserver/{etc,log}
```

Add your conserver config files

```text
cp conserver.cf console.cf ~/conserver/etc
```

Start the container

```text
docker-compose up -d
```

Connect to the container and use the console

```text
ljonsson@warsteiner> docker exec -it conserver /bin/bash
root@conserver:/# console usg
[Enter `^Ec?' for help]

Welcome to EdgeOS USG ttyS0

By logging in, accessing, or using the Ubiquiti product, you
acknowledge that you have read and understood the Ubiquiti
License Agreement (available in the Web UI at, by default,
http://192.168.1.1) and agree to be bound by its terms.

USG login:
```


