---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	DisplayName = "UpdateChannelModeration",
	Description = "Update channel moderation.",
	ModerationSettings = new ChannelModerationSettings
	{
		UserNewMessageRestriction = UserNewMessageRestriction.Moderators,
		ReplyRestriction = ReplyRestriction.Everyone,
		AllowNewMessageFromBots = true,
		AllowNewMessageFromConnectors = true,
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].PatchAsync(requestBody);


```