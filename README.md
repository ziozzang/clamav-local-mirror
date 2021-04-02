# clamav-local-mirror
ClamAV local Mirror


# Usage

```
docker run -d --name clamav-local-mirror -p 8000:8000 ziozzang/clamav-local-mirror
```

* Using Docker-compose.yml
```
version: '3.1'
services:
  clamav-local-mirror:
    image: ziozzang/clamav-local-mirror
    restart: always
    ports:
      - 8000:8000
```

# ClamAV Setup

* freshclam.conf config file to point to:

```
DatabaseMirror http://some.url:8000
```

