---
slug: produce-events
id: xris37syz5db
type: challenge
title: Produce Events
teaser: Produce events to the Kafka topic
notes:
- type: text
  contents: Another 101 video and text
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

```
dotnet run --project producer.csproj $(pwd)/getting-started.properties
```
