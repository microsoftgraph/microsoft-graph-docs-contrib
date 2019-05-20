
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupTypesList = new List<String>();
groupTypesList.Add( "Unified" );

var group = new Group
{
	Description = "Self help community for library",
	DisplayName = "Library Assist",
	GroupTypes = groupTypesList,
	MailEnabled = true,
	MailNickname = "library",
	SecurityEnabled = false,
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```