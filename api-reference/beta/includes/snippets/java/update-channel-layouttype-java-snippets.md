---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setLayoutType(ChannelLayoutType.Chat);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").patch(channel);


```