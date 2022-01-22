---
slug: configuration
id: hqgq9mas6smu
type: challenge
title: Configuration
teaser: Build a configuration file for .NET client applications
notes:
- type: text
  contents: |-
    # Apache Kafka® Brokers

    <iframe width="560" height="315" src="https://www.youtube.com/embed/jHnyBSUVcOU" title="Apache Kafka Brokers" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    Watch Tim skillfully explain Kafka Brokers while we load your development environment. When the environment is ready, a Start button will be available in the bottom right corner of the browser.
tabs:
- title: Terminal
  type: terminal
  hostname: terminal
- title: IDE
  type: code
  hostname: terminal
  path: /source
difficulty: basic
timelimit: 600
---

Let's create a configuration file for our .NET application so it can properly conect to our new Kafka cluster.

First, let's take a small step back and look at the Kafka cluster we created in the previous challenge. You _may_ need to log back into Confluent Cloud with `confluent login`:

```
confluent kafka cluster list
```

You should see output similar to the following. Take note of the Kafka Id that looks like `lkc-yzr27`:

```
      Id      |  Name  | Type  | Provider |   Region    | Availability | Status
--------------+--------+-------+----------+-------------+--------------+---------
  * lkc-yzr27 | dotnet | BASIC | gcp      | us-central1 | single-zone  | UP
```

Connecting to our Confluent Cloud cluster requires a few bits of information. The connection endpoint (also called a Bootstrap in the Kafka ecosystem), as well as an API key and secret. Let's start by collecting the endpoint. The `describe` command can give us the endpoint:

```
confluent kafka cluster describe <cluster-id>
```

Your output will look similar to the following, take note of the `Endpoint` value:
```
+--------------+-----------------------------------------------------------+
| Id           | lkc-yzr27                                                 |
| Name         | dotnet                                                    |
| Type         | BASIC                                                     |
| Ingress      |                                                       100 |
| Egress       |                                                       100 |
| Storage      |                                                      5000 |
| Provider     | gcp                                                       |
| Availability | single-zone                                               |
| Region       | us-central1                                               |
| Status       | UP                                                        |
| Endpoint     | SASL_SSL://pkc-abc12.us-central1.gcp.confluent.cloud:9092 |
| RestEndpoint | https://pkc-abc12.us-central1.gcp.confluent.cloud:443     |
+--------------+-----------------------------------------------------------+
```

Next, let's create an API key to use in our client application. Using the Kafka cluster Id from the output, run the following:

```
confluent api-key create --resource <cluster-id>
```

The CLI will print out the new API Key and Secret, take note of these values. If you want to use your cluster after this excercise, you should save these values before closing this challenge. These values are secret and provide full access to your cluster. You should protect these values like you would any other credential.

```
It may take a couple of minutes for the API key to be ready.
Save the API key and secret. The secret is not retrievable later.
+---------+------------------------------------------------------------------+
| API Key | AABBCCDDEEFFGGHH                                                 |
| Secret  | abbCkB9zAe8xQ9MSMRl4ZQmslRx2uIAgcsOJBOwQw/TXcN9ULsV8267bFWlHf8AX |
+---------+------------------------------------------------------------------+
```

Now, with these three values collected (the endpoint, the Key, and the secret), open the `IDE` editor to the left and open the `getting-started-cloud.properties` file and fill in the values in the appropriate line. Remember, `bootstrap.servers` equals `Endpoint`. Also, `sasl.username` and `sasl.password` are the API key and secret. It should look like this:

```
bootstrap.servers=pkc-abc12.us-central1.gcp.confluent.cloud:9092
security.protocol=SASL_SSL
sasl.mechanisms=PLAIN
sasl.username=AABBCCDDEEFFGGHH
sasl.password=abbCkB9zAe8xQ9MSMRl4ZQmslRx2uIAgcsOJBOwQw/TXcN9ULsV8267bFWlHf8AX
```

Be sure to click the Save icon on the editor tab after making your changes.

Great, we've written our configuration file! In the next challenge we will begin developing and running our applications.

Click Check below to proceed...
