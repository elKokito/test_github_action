Simple express application with tests and connection to Postgres

# List Commands

| command | description |
| --- |  ---|
| `npm test` | run all tests | 
| `npm start` | start express server | 

# Environment Variables
| name | default | description |
| --- | ---- | --- |
| PORT | 3000 | number indicating which port to run the server |
| PGUSER | postgres | postgres user |
| PGHOST | localhost | postgres hostname | 
| PGPASSWORD | postgrespw | postgres password | 
| PGDATABASE | postgres | service name | 
| PGPORT | 55000 | postgres server port |
 
### Scenario #1 
Developers make sure to run `npm test` before pushing their PR

* Create a workflow that ensures `main` branch is always in a deployable state


### Scenario #2 
The infrastructure team is experimenting with containers, however, the team is not familiar with Docker

| command | description |
|-----|----|
| `./script/deploy <docker image id>` | Infrastrutured provided script to deploy a docker image |

* Create docker image and ensure application runs on port 80
* Create workflow to deploy `main` branch

