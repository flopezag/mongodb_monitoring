var db = connect(
  "mongodb://<root user>:<root password>@localhost:27017/admin"
);

db.createUser(
  {
    user: "<user>",
    pwd: "<password>",
    roles: [
        { role: "clusterMonitor", db: "admin" },
        { role: "read", db: "test" }
    ],
    passwordDigestor: "server",
  }
)
