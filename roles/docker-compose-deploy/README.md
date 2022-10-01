# Overview

A simple ansible role to deploy docker-compose stacks.

The role will create the necessary directory structure in `/opt/compose` and copy over the required `docker-compose.yml`. The files to be deployed should be placed in the `docker/` directory of the given project.

The files/directories should be named as follows:

```
├── docker
│   ├── <docker compose stack>
│   │   ├── docker-compose.env
│   │   ├── docker-compose.yml
│   │   └── files
│   └── <another stack>
│       ├── docker-compose.env
│       └── docker-compose.yml
```

An optional `ansible/files/<stack>/` directory will be synced to the relevant stack's directory and here, config files etc. for the stack can be placed, so that they are kept in version control. For example: https://supperdeliveries.visualstudio.com/Supper%20NEW/_git/Supper.Infra?path=/projects/analytics/ansible/files/superset

# Inputs

`compose_deployments` - a list of names of the stacks to be deployed.
