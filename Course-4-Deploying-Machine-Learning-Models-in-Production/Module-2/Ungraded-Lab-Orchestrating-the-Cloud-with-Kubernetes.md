# Ungraded Lab - Orchestrating the Cloud with Kubernetes

In this lab, you will:

* provision a complete Kubernetes cluster using Kubernetes Engine

* deploy and manage Docker containers using kubectl.

* break an application into microservices using Kubernetes' Deployments and Services.

These will help you become familiar with the commands to create and manage the Kubernetes clusters in this week's assignment.

**Note**: [App](https://github.com/kelseyhightower/app) is hosted on GitHub and provides an example 12-Factor application. During this lab you will be working with the following Docker images:

* [kelseyhightower/monolith](https://hub.docker.com/r/kelseyhightower/monolith) - Monolith includes auth and hello services.
* [kelseyhightower/auth](https://hub.docker.com/r/kelseyhightower/auth) - Auth microservice. Generates JWT tokens for authenticated users.
* [kelseyhightower/hello](https://hub.docker.com/r/kelseyhightower/hello) - Hello microservice. Greets authenticated users.
* [nginx](https://hub.docker.com/_/nginx) - Frontend to the auth and hello services.

For this lab, using a managed environment such as Kubernetes Engine allows you to focus on experiencing Kubernetes rather than setting up the underlying infrastructure.

# Setup and requirements

1. Get access ot GCP
2. Activate Cloud Shell
3. Google Kubernetes Engine
    In the cloud shell environment type the following command to set the zone:

    ```bash
    gcloud config set compute/zone us-central1-b
    ```

    Start up a cluster for use in this lab:

    ```bash
    gcloud container clusters create io
    ```

    You are automatically authenticated to your cluster upon creation. If you lose connection to your Cloud Shell for any reason, run the gcloud container clusters get-credentials io command to re-authenticate.

    **Note**: It will take a while to create a cluster - Kubernetes Engine is provisioning a few Virtual Machines behind the scenes for you to play with!

# Task 1. Get the sample code

Copy the source code from the Cloud Shell command line:

```bash
gsutil cp -r gs://spls/gsp021/* .
```

Change into the directory needed for this lab:

```bash
cd orchestrate-with-kubernetes/kubernetes
```

List the files to see what you're working with:

```bash
ls
```

The sample has the following layout:

```bash
deployments/  /* Deployment manifests */
  ...
nginx/        /* nginx config files */
  ...
pods/         /* Pod manifests */
  ...
services/     /* Services manifests */
  ...
tls/          /* TLS certificates */
  ...
cleanup.sh    /* Cleanup script */
```

Now that you have the code -- it's time to give Kubernetes a try!
