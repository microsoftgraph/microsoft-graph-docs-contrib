
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var funSettings = new TeamFunSettings
{
	AllowGiphy = true,
	GiphyContentRating = GiphyRatingType.Strict,
};

var messagingSettings = new TeamMessagingSettings
{
	AllowUserEditMessages = true,
	AllowUserDeleteMessages = true,
};

var memberSettings = new TeamMemberSettings
{
	AllowCreateUpdateChannels = true,
};

var team = new Team
{
	MemberSettings = memberSettings,
	MessagingSettings = messagingSettings,
	FunSettings = funSettings,
};

await graphClient.Teams["{id}"]
	.Request()
	.UpdateAsync(team);

```