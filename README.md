Hey there 👋 we're excited that you're considering joining our mission to help the helpers!

The goal of this exercise is to evaluate your ability to: 
* Understand version control management, from commit to production
* Navigate unfamiliar applications
* Know your toolkit, research features the pipeline offers
* Design for failure
* Proper use commits and messages
* Write documentation / README / changelog

Code should be submitted in a Git repository with clear documentation on what developers are expected to do to add new features. 
Feel free to specify any assumptions that you’ve made, along with any missing details that would complete the solution.

'''
# deploy an docker image to production
#
# Usage:
#  $ ./deploy jane:{sha}
# * image-id:  docker image id
'''

We are not expecting this to be deploy in actual infrastructure, only building the docker image and calling the deploy script

If you require further clarification, then please do not hesitate to ask.

## List Commands

| command | description |
| --- |  ---|
| `npm test` | run all tests | 
| `npm start` | start express server | 

## Environment Variables
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

* Create docker image and ensure application runs on port 80
* Create workflow to deploy `main` branch

##### Extra commands 
| command | description |
|-----|----|
| `./script/deploy <docker image id>` | Infrastrutured provided script to deploy a docker image |
