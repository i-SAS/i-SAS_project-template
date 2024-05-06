# Run i-SAS
CURRENT=$(cd $(dirname $0)/.. && pwd)

cd $CURRENT/project_system
docker compose run --rm project bash bin/check_db_connection

cd $CURRENT/project_system
docker compose up
