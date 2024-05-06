# setup postgres
until pg_isready --host=postgres;
do
  >&2 echo "postgres is unavailable - waiting"
  sleep 5
done

# setup influxdb
until influx ping --host http://influxdb:8086;
do
  >&2 echo "influxdb is unavailable - waiting"
  sleep 5
done
