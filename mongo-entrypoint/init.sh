# init.sh
set -e

mongosh <<EOF
use admin

var db = connect(
  "mongodb://$MONGO_INITDB_ROOT_USERNAME:$MONGO_INITDB_ROOT_PASSWORD@localhost:27017/admin"
);

db.createUser(
  {
    user: '$MONGO_USER',
    pwd: '$MONGO_PASSWORD',
    roles: [
        { role: "clusterMonitor", db: "admin" },
        { role: "readWrite", db: "$MONGO_DB" }
    ],
    passwordDigestor: "server",
  }
)
EOF