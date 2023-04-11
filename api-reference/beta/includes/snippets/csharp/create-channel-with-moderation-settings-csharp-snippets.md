---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Channel
{
	DisplayName = "TestChannelModeration",
	Description = "Test channel moderation.",
	MembershipType = ChannelMembershipType.Standard,
	ModerationSettings = new ChannelModerationSettings
	{
		UserNewMessageRestriction = UserNewMessageRestriction.EveryoneExceptGuests,
		ReplyRestriction = ReplyRestriction.Everyone,
		AllowNewMessageFromBots = true,
		AllowNewMessageFromConnectors = true,
	},
};
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```