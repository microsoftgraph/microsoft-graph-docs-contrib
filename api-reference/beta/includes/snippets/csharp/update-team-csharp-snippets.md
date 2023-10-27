---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Team
{
	IsMembershipLimitedToOwners = true,
	MemberSettings = new TeamMemberSettings
	{
		AllowCreateUpdateChannels = true,
	},
	MessagingSettings = new TeamMessagingSettings
	{
		AllowUserEditMessages = true,
		AllowUserDeleteMessages = true,
	},
	FunSettings = new TeamFunSettings
	{
		AllowGiphy = true,
		GiphyContentRating = GiphyRatingType.Strict,
	},
	DiscoverySettings = new TeamDiscoverySettings
	{
		ShowInTeamsSearchAndSuggestions = true,
	},
};
var result = await graphClient.Teams["{team-id}"].PatchAsync(requestBody);


```