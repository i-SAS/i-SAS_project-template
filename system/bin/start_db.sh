# Start i-SAS Database
CURRENT=$(cd $(dirname $0)/.. && pwd)

# run database containers
echo RUN DB
cp $CURRENT/project_base/.env $CURRENT/db/.env
cd $CURRENT/db
docker compose up -d
