# Prometheus Monitoring of DBs
Prometheus monitoring of a MongoDB and PostgreSQL DB instances and integration into Grafana UI

## Configuration
There are several parameters that need to be fixed in the deployment of the docker compose:
- MongoDB, to be changed in [compose.yml](./compose.yml)
    - **MONGO_INITDB_ROOT_USERNAME**: The root username of the MongoDB instance.
    - **MONGO_INITDB_ROOT_PASSWORD**: The root password of the MongoDB.
- MongoDB initialization of the user of the metrics, to be changed in [mongo-init.js](./mongo-entrypoint/mongo-init.js)
    - **connect**, change the **\<root user>** and **\<root password>** with the data defined in **MONGO_INITDB_ROOT_USERNAME** and **MONGO_INITDB_ROOT_PASSWORD** in [compose.yml](./compose.yml).
    - **user: "\<user>"** corresponding user to keep the metrics
    - **pwd: "\<password>"** corresponding password of the user
- Mongo-Exporter to be changed in [compose.yml](./compose.yml)
    - **MONGODB_URI**, change \<user> and \<password> for the data defined in [mongo-init.js](./mongo-entrypoint/mongo-init.js).
- Grafana, need to specify the user and password to access the UI, to be changed in [compose.yml](./compose.yml).
    - **GF_SECURITY_ADMIN_USER** the grafana user account.
    - **GF_SECURITY_ADMIN_PASSWORD** the grafana user password.

## Deployment

To deploy the components just execute:

```bash
docker compose -f compose.yml up -d
```

If you want to destroy the docker containers, just execute the command:

```bash
docker compose -f compose.yml down -v
```

## License

This repository is licensed under Apache License 2.0.
