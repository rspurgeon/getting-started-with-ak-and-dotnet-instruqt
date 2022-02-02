---
slug: produce-events
id: xris37syz5db
type: challenge
title: Produce Events
teaser: Produce events to the Kafka topic
notes:
- type: text
  contents: |-
    # Produce events to the Kafka topic

    <iframe width="560" height="315" src="https://www.youtube.com/embed/b0BEl3ZKxxI" title="Apache Kafka 101: Ecosystem" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    While we load this challenge, watch this video about the Apache Kafka® ecosystem. When the environment for this challenge is ready, a Start button will be available in the bottom right corner of the browser.
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

We're ready to send and receive events to our Kafka cluster on Confluent Cloud.

We can use the `dotnet run` command to execute our .NET application, specifiying the `producer.csproj` project and the `getting-started-cloud.properties` file we built a few steps back.

Run this command in the terminal:

```
dotnet run --project producer.csproj $(pwd)/getting-started-cloud.properties
```

You should see output similar to this:

```
Produced event to topic purchases: key = eabara     value = batteries
Produced event to topic purchases: key = jbernard   value = t-shirts
Produced event to topic purchases: key = jsmith     value = t-shirts
Produced event to topic purchases: key = jbernard   value = alarm clock
Produced event to topic purchases: key = sgarcia    value = book
Produced event to topic purchases: key = jsmith     value = batteries
Produced event to topic purchases: key = jsmith     value = gift card
Produced event to topic purchases: key = eabara     value = book
Produced event to topic purchases: key = eabara     value = gift card
Produced event to topic purchases: key = htanaka    value = batteries
10 messages were produced to topic purchases
```

Now you have events in your Kafka topic! Let's read them back out by clicking Check to move to the next exercise...

