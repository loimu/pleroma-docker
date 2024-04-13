###About###
The image meant to be close enough to what pleroma project provides to ease the migration.

###How to start###

0. Ensure you have Docker `buildx` extension installed.
1. First edit the env files. Set the correct address.
2. Edit `volumes/pleroma/config.exs`.
3. Set the permissions `chown -R 911:911 volumes/pleroma/uploads`.
4. Configure db image.

    ```
    docker-compose up -d pleroma-db
    docker exec -i pleroma-db psql -U pleroma -c "CREATE EXTENSION IF NOT EXISTS citext;"
    docker-compose down
    ```

5. Run `docker-compose build pleroma`.
6. Finally start everything `docker-compose up -d`.
7. Check the logs `docker logs -f pleroma`
    or `docker logs --tail 500 --follow --timestamps pleroma`.
8. Create admin user `docker exec -it pleroma sh ./bin/pleroma_ctl user new adminusername admin@change.it --admin`


##Other images###

- [angristan/docker-pleroma](https://github.com/angristan/docker-pleroma)
- [potproject/docker-pleroma](https://github.com/potproject/docker-pleroma)
- [rysiek/docker-pleroma](https://git.pleroma.social/rysiek/docker-pleroma)
