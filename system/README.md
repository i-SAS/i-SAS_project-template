# i-SAS_project-{template}: system
Implementation of the `system` project {template} for i-SAS.

## 1. Set current working directory
Set the current working directory.
```shell
$ cd system
```

## 2. Construct project
Construct project directory for your project.

### 2.1 Customize config file
Modify `project_base/cfg/project.yml` file for your project.

### 2.2 Docker build
Copy and modify `.env` according to your environment before building the docker image.
```shell
$ cp project_base/.env{.example,}
```

Now, you can build the image.
```shell
$ DOCKER_BUILDKIT=1 docker build -f project_base/Dockerfile --ssh default . -t isas_project-{template}:system
```
The project services share this image.

### 2.3 (Optional) Update dependencies
If you add the Python package, modify dependencies in the `pyproject.toml` and execute
```shell
$ bash project_base/bin/update_dependencies.sh
```
The project services share the dependencies, so all dependencies of the all should be included.

Note that you need to rebuild the image after the command.

### 2.4 Construct project
```shell
$ bash project_base/bin/construct_project.sh
```

## 3. Command

### 3.1 (Optional) Set up i-SAS Database
Set up i-SAS Database with docker containers.
This process can be skipped if using the existing database.

Start i-SAS database.
```shell
$ bash bin/start_db.sh
```

You can also stop i-SAS database by the command
```shell
$ bash bin/stop_db.sh
```

### 3.2 Run i-SAS
```shell
$ bash bin/run.sh
```
