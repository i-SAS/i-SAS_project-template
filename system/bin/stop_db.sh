# Stop i-SAS Database
CURRENT=$(cd $(dirname $0)/.. && pwd)
source $CURRENT/project_base/.env
CONTAINER_NAME_POSTGRES=project-${PROJECT_NAME}_system_postgres
CONTAINER_NAME_ADMINER=project-${PROJECT_NAME}_system_adminer
CONTAINER_NAME_INFLUXDB=project-${PROJECT_NAME}_system_influxdb
CONTAINER_NAME_CHRONOGRAF=project-${PROJECT_NAME}_system_chronograf

docker stop $CONTAINER_NAME_POSTGRES
docker rm $CONTAINER_NAME_POSTGRES
rm -r db/postgres/data/

docker stop $CONTAINER_NAME_ADMINER
docker rm $CONTAINER_NAME_ADMINER

docker stop $CONTAINER_NAME_INFLUXDB
docker rm $CONTAINER_NAME_INFLUXDB
rm -r db/influxdb/data/

docker stop $CONTAINER_NAME_CHRONOGRAF
docker rm $CONTAINER_NAME_CHRONOGRAF
