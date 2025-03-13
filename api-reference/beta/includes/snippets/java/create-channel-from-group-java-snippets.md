---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setDisplayName("Architecture Discussion");
channel.setDescription("This channel is where we debate all future architecture plans");
channel.setMembershipType(ChannelMembershipType.Standard);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().post(channel);


```