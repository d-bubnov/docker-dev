# docker-dev

***Note: This repository and instruction only for developers.***

A set of scripts for deploying the product locally on one machine.

Clone this repository to your PC and change your current directory to main folder of repository:

```
> git clone https://github.com/d-bubnov/docker-dev.git
> cd docker-dev
```

Then start the process with the following:

1) Install all needed repositories (to the same directory where is your `docker-dev` repository):

```
> git clone https://github.com/d-bubnov/server-api.git
> git clone https://github.com/d-bubnov/web-app.git
```

Links to the needed repositories:
 - [GitHub **server-api** repository](https://github.com/d-bubnov/server-api)
 - [GitHub **web-app** repository](https://github.com/d-bubnov/web-app)


2) Then build images for docker (wait for the operation to complete):

```
> ./build.sh
```

3) After successfully build you need to start the docker containers (do not stop this operation manually):

```
> ./up.sh
```

----------------------------------------------------------------------------------------------------------------

If you need to stop all images just run command in new terminal:

```
> ./down.sh
```

## TCP ports of containers:

- **4000** - server-api (backend API for web-app)
- **3000** - web-app (nginx) (go to -> http://localhost:3000/)
- **27017** - mongo database (used in mongo-express)
- **8181** - mongo-express (go to -> http://localhost:8181/)


----------------------------------------------------------------------------------------------------------------
:shipit: - *We use these ports only for devenv test purpose. On production it is not needed to expose ports, will use 80 instead.*

