---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setDisplayName("Project Collaboration");
channel.setDescription("Discussion space for project team collaboration");
channel.setMembershipType(ChannelMembershipType.Standard);
channel.setLayoutType(ChannelLayoutType.Chat);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().post(channel);


```