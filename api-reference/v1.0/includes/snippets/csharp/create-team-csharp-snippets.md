---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	MemberSettings = new TeamMemberSettings
	{
		AllowCreatePrivateChannels = true,
		AllowCreateUpdateChannels = true,
		ODataType = null
	},
	MessagingSettings = new TeamMessagingSettings
	{
		AllowUserEditMessages = true,
		AllowUserDeleteMessages = true,
		ODataType = null
	},
	FunSettings = new TeamFunSettings
	{
		AllowGiphy = true,
		GiphyContentRating = GiphyRatingType.Strict,
		ODataType = null
	},
	ODataType = null
};

await graphClient.Groups["{id}"].Team
	.Request()
	.PutAsync(team);

```
