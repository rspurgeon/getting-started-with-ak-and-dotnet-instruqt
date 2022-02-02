---
slug: consume-events
id: ov6qjpeylpxy
type: challenge
title: Consume Events
teaser: A short description of the challenge.
notes:
- type: text
  contents: |-
    # Consume events from the Kafka topic

    <iframe width="560" height="315" src="https://www.youtube.com/embed/Da6MwowCGHo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    While we load this challenge, watch this video about ksqlDB, the database purpose-built for stream processing applications. When the environment for this challenge is ready, a Start button will be available in the bottom right corner of the browser.
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

Finally, we are ready to read events from our Kafka cluster on Confluent Cloud.

We can use the `dotnet run` command to execute our .NET application, specifiying the `consumer.csproj` project and the `getting-started-cloud.properties` file we built a few steps back.

Run this command in the terminal:

```
dotnet run --project consumer.csproj $(pwd)/getting-started-cloud.properties
```

You should see output similar to this:

```
Consumed event from topic purchases with key eabara     and value batteries
Consumed event from topic purchases with key jbernard   and value t-shirts
Consumed event from topic purchases with key jsmith     and value t-shirts
Consumed event from topic purchases with key jbernard   and value alarm clock
Consumed event from topic purchases with key sgarcia    and value book
Consumed event from topic purchases with key jsmith     and value batteries
Consumed event from topic purchases with key jsmith     and value gift card
Consumed event from topic purchases with key eabara     and value book
Consumed event from topic purchases with key eabara     and value gift card
Consumed event from topic purchases with key htanaka    and value batteries
```

Press `ctrl-c` to terminate the consumer application.


That's it! You've completed this track on getting started with Confluent Cloud and .NET. For a lot more information on Apache Kafka and Confluent, see https://developer.confluent.io/

