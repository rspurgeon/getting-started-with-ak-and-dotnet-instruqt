---
slug: create-topic
id: yzsouchvmttl
type: challenge
title: Create topic
teaser: Use the Confluent CLI to create a new Kafka Topic
notes:
    # Apache Kafka® Topics

		<iframe width="560" height="315" src="https://www.youtube.com/embed/kj9JH3ZdsBQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    The video above examines Kafka Topics. When the environment for this challenge is ready, a Start button will be available in the bottom right corner of the browser.
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

Topics are a system for organizing events and are the most fundamental unit of organization in Kafka. Before we proceed with writing our client applications in .NET, let's create a topic with the `confluent` CLI in our Confluent Cloud cluster.

First, let's ensure we are still logged in (you may need to execute `confluent login` again if not), and have selected our `dotnet` cluster before proceeding.

Let's make sure we're using the proper environment. Look for the `*` indicator which shows which environment is the current context for the the CLI. If you need to change the current environment, use `confluent environment use`:

```
confluent environment list
```

You should see something like the following report (note the `*`):

```
      ID      |          Name            
--------------+--------------------------
    t20996    | default                  
  * env-vd5vn | getting-started-dotnet
```

Next let's do the same thing for the Kafka cluster itself.

```
confluent kafka cluster list
```

You will see a report like the following. Ensure you're using the proper cluster, and if you need to change the current cluster, use `confluent kafka cluster use`:

```
      Id      |  Name  | Type  | Provider |   Region    | Availability | Status  
--------------+--------+-------+----------+-------------+--------------+---------
  * lkc-6jm06 | dotnet | BASIC | gcp      | us-central1 | single-zone  | UP      
```

Now our CLI is in the proper context, we can proceed with creating our topic.  We are going to create a topic called `purchases` with 1 partition. For more information on partitions and other options to this command, run `confluent kafka topic create --help`:

```
confluent kafka topic create purchases --partitions 1
```

When your topic is created, you will see:

```
Created topic "purchases".
```

Now we have our topic, click Check to move to the next challenge.
