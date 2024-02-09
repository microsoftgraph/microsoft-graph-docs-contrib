---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setDisplayName("UpdateChannelModeration");
channel.setDescription("Update channel moderation.");
ChannelModerationSettings moderationSettings = new ChannelModerationSettings();
moderationSettings.setUserNewMessageRestriction(UserNewMessageRestriction.Moderators);
moderationSettings.setReplyRestriction(ReplyRestriction.Everyone);
moderationSettings.setAllowNewMessageFromBots(true);
moderationSettings.setAllowNewMessageFromConnectors(true);
channel.setModerationSettings(moderationSettings);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").patch(channel);


```