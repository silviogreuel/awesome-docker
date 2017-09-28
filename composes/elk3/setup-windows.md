**Create a docker machine on :heart::heart::heart: Digital Ocean :heart::heart::heart:**
```bat
docker-machine create ^
  --driver digitalocean ^
  --digitalocean-access-token=8cc3ea389efdb510a77062be73054688b42fb8b17b8729bd9554dfcd06b1b6f1 ^
  --digitalocean-size=8gb ^
  --digitalocean-tags=inventti,docker,stack,elk ^
  elk
```

**Configure environment:**
```bat
docker-machine env elk
```

**One-liner:**
```bat
@FOR /f "tokens=*" %i IN ('docker-machine env elk') DO @%i
```

**Connect ssh**
```sh
docker-machine ssh elk
```

**Install docker-compose**
```sh
curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
```
```sh
mod +x /usr/local/bin/docker-compose
```

**Clone this repository**
```sh
git clone https://github.com/silviogreuel/talk-elk.git
```
```sh
cd talk-elk
```

**Up elk with docker compose (will create images)**
```sh
docker-compose up
```

**Install/Configure Metricbeats**
- https://www.elastic.co/guide/en/beats/metricbeat/current/metricbeat-installation.html

**Install/Configure Filebeats**

**X-Pack/Extras**

