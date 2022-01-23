---
slug: build-consumer
id: tq0ydnudx7ls
type: challenge
title: Build Consumer
teaser: Create a .NET consumer application
notes:
- type: text
  contents: |-
    # Apache Kafka® Consumers

		<iframe width="560" height="315" src="https://www.youtube.com/embed/Z9g4jMQwog0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    The video above examines Kafka Consumers. When the environment for this challenge is ready, a Start button will be available in the bottom right corner of the browser.
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

To start, open the IDE tab and open the `consumer.cs` file.

Just like with the producer code, we construct a `configuration` object from a file path passed in as a command line argument.

```
IConfiguration configuration = new ConfigurationBuilder()
            .AddIniFile(args[0])
            .Build();
```

Next, we add some items to the configuration object in the code. In a production application, you would likely put these values into the configuration file instead of hardcoded in the source.

```
configuration["group.id"] = "kafka-dotnet-getting-started";
configuration["auto.offset.reset"] = "earliest";
```

The `group.id` value specifies the Kafka consumer group this consumer application is a member of.

The `auto-offset-reset` value indicates where in the topic the consumer should start consuming if there is no existing offset stored

Next let's look at the construction of a consumer. This line passes the `configuration` instance into the `ConsumerBuilder`. The type definition of the `ConsumerBuilder` defines what type of events can be produced by this `consumer` instance. In this case, this consumer can read events with a key type of `string` and a value type of `string`.

```
using (var consumer = new ConsumerBuilder<string, string>(
            configuration.AsEnumerable()).Build())
        {
```

Finally let's look at the code which actually consumes the event:

```
consumer.Subscribe(topic);
try {
    while (true) {
        var cr = consumer.Consume(cts.Token);
        Console.WriteLine($"Consumed event from topic {topic} with key {cr.Message.Key,-10} and value {cr.Message.Value}");
    }
}
```

Here, the `consumer` instance is instructed to subscribe to the topic passed into the `Subscribe` routine. This, combined with the `group.id` configuration value above, determines where in the topic the consumer will start consuming. 

Finally, the `consumer.Close();` function instructs the consumer to stop consuming and close the connection to the cluster.

To compile and verify this code, open the Terminal tab and run the following `dotnet` command:

```
dotnet build consumer.csproj
```

Click Check to move to the next exercise...
