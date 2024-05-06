# i-SAS_project-{template}: development
Implementation of the `development` project {template} for i-SAS.

## 1. Set current working directory
Set the current working directory.
```shell
$ cd development
```

## 2. Docker build & run
Copy and modify `.env` according to your environment before building the docker image.
```shell
$ cp .env{.example,}
```

Now, you can build the image.
```shell
$ DOCKER_BUILDKIT=1 docker build --ssh default . -t isas_project-{template}:development
$ docker compose run -p 8888:8888 --rm project
```

## 3. Command
### Download data
```shell
poetry run isas_download
```

### Add package
Modify `pyproject.toml` and execute
```shell
poetry lock
```
Note that you need to run ssh-agent in the container before the command, and rebuild the image after the command.

### Check coding conventions
```shell
flake8
```

### Run notebook
```shell
jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --port=8888
```
