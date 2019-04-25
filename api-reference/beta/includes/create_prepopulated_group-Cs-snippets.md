
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupTypesList = new List<String>();
groupTypesList.Add( "Unified" );

var group = new Group
{
	Description = "Group with designated owner and members",
	DisplayName = "Operations group",
	GroupTypes = groupTypesList,
	MailEnabled = true,
	MailNickname = "operations2019",
	SecurityEnabled = false,
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```