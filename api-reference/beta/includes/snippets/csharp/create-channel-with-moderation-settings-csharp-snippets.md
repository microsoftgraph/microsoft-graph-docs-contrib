---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels.PostAsync(requestBody);


```