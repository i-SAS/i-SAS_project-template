CURRENT=$(cd $(dirname $0)/.. && pwd)

cd $CURRENT
CMD='eval `ssh-agent`;cat /root/.ssh/id_rsa | ssh-add -k -; poetry lock'
docker compose run --rm project bash -c "$CMD"
