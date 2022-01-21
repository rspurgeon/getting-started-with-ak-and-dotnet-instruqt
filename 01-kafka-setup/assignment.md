---
slug: kafka-setup
type: challenge
title: Kafka Setup
teaser: Provision a Kafka cluster on Confluent Cloud 
notes:
- type: text
  contents: |-
		# Apache Kafka® 101

		<iframe width="560" height="315" src="https://www.youtube.com/embed/qu96DFXtbG4" title="Apache Kafka® 101" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    Watch this video primer on Apache Kafka while we load your development environment.
tabs:
- title: Terminal 
  type: terminal
  hostname: terminal
difficulty: basic
timelimit: 600
---

Start Apache Kafka® the easiest, fastest way possible using Confluent Cloud in this getting started guide for .NET clients. 

If you do not already have an account, head over to the [Confluent Cloud](https://www.confluent.io/confluent-cloud/tryfree/) signup page and use the promo code `KAFKA101` for $101 of additional free usage.

We are going to need a Kafka Cluster for our client application to operate with. We can provision a cluster in a few ways, for this exercise we will provision one using the `confluent` CLI which is already installed for you here.

First login to your account using the `confluent` CLI:

```
confluent login
```

Confluent Cloud allows for segmenting of resources using Environments. For example, an environment might be used to isolate `dev` resources from `prd`. We can use this feature to create a sandbox for our work in this exercise.  Create a new environment with:

```
confluent environment create getting-started-dotnet
```

You will see something similiar to:
```
+------------------+------------------------+
| Environment Name | getting-started-dotnet |
| ID               | env-yd9np              |
+------------------+------------------------+
```

Next, set the current environment context of the CLI by using the new environment (substituted your environment ID:

```
confluent environment use env-yd9np
```

Now, let's create a cluster. We are going to create a basic cluster which is perfect for development use-cases. See the [documentation](https://docs.confluent.io/cloud/current/clusters/cluster-types.html) for details on cluster types.  When creating the cluster you must specify a cloud provider and region, in this example we've choosen Google Cloud Platform (`gcp`) in the central US region (`us-central1`).

```
confluent --cloud gcp --region us-central1 dotnet
```

You will quickly receive a report with important details about your new cluster, similiar to this:

```
It may take up to 5 minutes for the Kafka cluster to be ready.
+--------------+-----------------------------------------------------------+
| Id           | lkc-7rwko                                                 |
| Name         | dotnet                                                    |
| Type         | BASIC                                                     |
| Ingress      |                                                       100 |
| Egress       |                                                       100 |
| Storage      |                                                      5000 |
| Provider     | gcp                                                       |
| Availability | single-zone                                               |
| Region       | us-central1                                               |
| Status       | UP                                                        |
| Endpoint     | SASL_SSL://pkc-43n10.us-central1.gcp.confluent.cloud:9092 |
| ApiEndpoint  | https://pkac-4nyq6.us-central1.gcp.confluent.cloud        |
| RestEndpoint | https://pkc-43n10.us-central1.gcp.confluent.cloud:443     |
+--------------+-----------------------------------------------------------+
```

Great, we have a cluster! This exercise module will verify that your cluster is created before moving to the next step where we will begin to build our .NET applications.

Click Next to proceed...

