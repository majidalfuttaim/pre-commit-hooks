# pre-commit-hooks


Repository currently holds one pre-commit hook that provides a docker container with graphviz and dot packages installed to generate diagrams from code based on on diagrams.mingrammar.com. This can easily be let go if you have graphviz and dot packages installed on your system and more vanilla approach to run python directly on the code can be used then.

## Why does this repo exist for such a small thing

pre-commit-hooks demands that there should be a .pre-commit-hooks.yaml in the root directory of a folder along with the actual hook, in this case docker. It was cumbersome to put this in grid-infra repo and confuse people as to what that Dockerfile is for. Hence the repo ! Open for improvements. 


## Prerequisites

Install the following software in order to work in the monorepo:

- [Docker](https://docs.docker.com/engine/install/) (Docker for *, [colima](https://github.com/abiosoft/colima), Rancher, or any other alternative) (version 24.0.2 or newer)



## How to use it in your project

Add the below snippet in .pre-commit-config.yaml 

```YAML
- repo: https://github.com/majidalfuttaim/pre-commit-hooks
  hooks:
    - id: diagrams-docker
      files: '\.diagrams\.py$'
```


