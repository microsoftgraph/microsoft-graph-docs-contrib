
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupTypesList = new List<String>();
groupTypesList.Add( "Unified" );

var group = new Group
{
	Description = "Self help community for golf",
	DisplayName = "Golf Assist",
	GroupTypes = groupTypesList,
	MailEnabled = true,
	MailNickname = "golfassist",
	SecurityEnabled = false,
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```