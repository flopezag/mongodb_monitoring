# Prometheus Monitoring of DBs
Prometheus monitoring of a MongoDB and PostgreSQL DB instances and integration into Grafana UI for checking all is working.

## Configuration
There are several parameters that need to be fixed in the deployment of the docker compose, and described in the [.env](.env) file:

- PostgreSQL
    - PGSQL_USERNAME, the name of the admin user of the PostgreSQL DB.
    - PGSQL_PASSWORD, the password of the admin user of the PostgreSQL DB.
    - PGSQL_DBNAME, the name of the DB that contains the metrics of the PostgreSQL DB.
    - PGSQL_PORT, PostgreSQL Port, default: _*5432*_.
- MongoDB
    - MONGODB_ROOT_USERNAME, the name of the admin user of the MongoDB.
    - MONGODB_ROOT_PASSWORD, the password of the admin user of the MongoDB DB.
    - MONGODB_USERNAME, the name of the monitoring user of the MongoDB.
    - MONGODB_PASSWORD, the password of the monitoring user of the MongoDB.
    - MONGODB_DBNAME, the name of the monitoring DB to keep the metrics in MongoDB
    - MONGODB_PORT, MongoDB Port, default: _*27017*_.
- Grafana
    - GRAFANA_USER, Grafana user name.
    - GRAFANA_PASSWORD, Grafana user password.
    - GRAFANA_PORT, Grafana Port, default: _*3000*_.
- Prometheus
    - PROMETHEUS_PORT, Prometheus Port, default _*9090*_.
- MongoDB Exporter
    - MONGODB_EXPORTER_PORT, MongoDB Exporter Port, default: _*9216*_.
- PostgreSQL Exporter
    - PGSQL_EXPORTER_PORT, PostgreSQL Exporter Port, default: _*9187*_.


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
