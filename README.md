# Unofficial docker-compose for Gitlab

### Running Gitlab and Gitlab runner

```
docker-compose up -d
```
### Running only Gitlab 

```
docker-compose up -d gitlab
```

### Gitlab runner
#### Register runner

When Gitlab is up and responding run the following using the appropriate arguments:

```
docker-compose exec gitlab-runner gitlab-runner register \
    --non-interactive \
    --executor "docker" \
    --docker-image "alpine:latest" \
    --url "http://gitlab:8881" \
    --registration-token "TO_BE_REPLACED" \
    --description "docker-runner" \
    --tag-list "docker,aws" \
    --run-untagged="true" \
    --locked="false" \
    --access-level="not_protected"
```

#### Restart runner

```
docker-compose restart gitlab-runner
```
