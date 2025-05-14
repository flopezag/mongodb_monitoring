# init.sh
set -e

mongosh <<EOF
use admin

var db = connect(
  "mongodb://homestead:secret@localhost:27017/"
);

db.createUser(
  {
    user: 'homestead2',
    pwd: 'secret',
    roles: [
        { role: "clusterMonitor", db: "admin" },
        { role: "readWrite", db: "$MONGO_DB" }
    ],
    passwordDigestor: "server",
  }
)
EOF