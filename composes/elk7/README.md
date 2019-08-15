**Usage**
```
docker-compose up -d
```

**Troubleshoot**

- Set permissions on selinux (restores on reboot)
```
vim /etc/selinux/config
SELINUX=permissive
```

- Set permissions on selinux (works between reboots)
```
sudo setenforce 0
```

- Set mod on files (755, could be a bad idea)
```
chmod -v o+r \
    elasticsearch/config/*.yml \
    kibana/config/*.yml \
    logstash/*/*.{yml,conf}
```

- Set ownership on file (owner 1000, default owner on docker, mandatory)
```
chown -R \
   elasticsearch/* \
   kibana/* \
   logstash/*
```
