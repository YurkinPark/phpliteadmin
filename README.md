# Intro

Project used to run phpliteadmin software as docker container

Current version is `1.9.8.2`

# Running in compose

```yaml
services:
  pla:
    image: yurkinpark/phpliteadmin
    container_name: "${COMPOSE_PROJECT_NAME}_phpliteadmin"
    restart: always
    volumes:
      - ./sqlite_directory:/db
```

# Settings

No settings yet, default password is `admin`
