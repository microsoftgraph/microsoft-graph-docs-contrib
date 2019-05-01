
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIdsList = new List<String>();
groupIdsList.Add( "groupIds-value" );

await graphClient.Me
	.CheckMemberGroups(groupIdsList)
	.Request()
	.PostAsync()

```