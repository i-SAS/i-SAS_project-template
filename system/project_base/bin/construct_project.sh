CURRENT=$(cd $(dirname $0)/.. && pwd)

cd $CURRENT
docker compose run --rm project poetry run isas_construct_project
rm -rf ../project_system
mv project_system ../
