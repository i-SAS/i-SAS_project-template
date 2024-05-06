# i-SAS_project-{template}
This repository is an implementation of i-SAS project {template}, including executable code for i-SAS package.

> [!IMPORTANT]
> This repository is not complete but development has been stopped.

## 1. Project Types

There are two types of i-SAS projects: `development` and `system`.

- `development`: A project for development of i-SAS system, using single container, and mainly notebooks.
- `system`: A project for operation of i-SAS system, using multiple containers.

It is recomended that you develop the `development` project first.

## 2. Clone
Execute the following command to clone this repository.
```
git clone git@github.com:i-SAS/i-SAS_project-{template}.git
cd i-SAS_project-{template}
```

## 3. Command
### 3.1 Replace project name
You can replace project name by the following command.
```
bash bin/replace_project_name.sh {project_name}
```
Note that `project_name` should be lower case.
