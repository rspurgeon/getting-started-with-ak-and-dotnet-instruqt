---
slug: build-producer
id: k3bkwmqzzshh
type: challenge
title: Build Producer
teaser: Create a C# producer application
notes:
- type: text
  contents: |-
    # Apache Kafka® Producers

    <iframe width="560" height="315" src="https://www.youtube.com/embed/I7zm3on_cQQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    The video above examines Kafka Producers. When the environment for this challenge is ready, a Start button will be available in the bottom right corner of the browser.
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

To start, open the IDE tab and open the `producer.cs` file.

The first line to study is near the top where we construct a `configuration` object from a file path passed in as a command line argument.

```
IConfiguration configuration = new ConfigurationBuilder()
            .AddIniFile(args[0])
            .Build();
```

Next let's look at the construction of a producer. This line passes the `configuration` instance into the `ProducerBuilder`. The type definition of the `ProducerBuilder` defines what type of events can be produced by this `producer` instance.

```
using (var producer = new ProducerBuilder<string, string>(
            configuration.AsEnumerable()).Build())
```

Finally let's look at the code which actually produces the event:

```
producer.Produce(topic, new Message<string, string> { Key = user, Value = item },
  ...
```

Here, the `producer` instance is instructed to send a new event with a key and a value specified int he function paramters to `Produce`.

To compile and verify this code, open the Terminal tab and run the following `dotnet` command:

```
dotnet build producer.csproj
```

Click Check to move to the next exercise...
