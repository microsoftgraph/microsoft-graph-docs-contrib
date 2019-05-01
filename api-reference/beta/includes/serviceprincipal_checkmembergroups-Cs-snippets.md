
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIdsList = new List<String>();
groupIdsList.Add( "groupIds-value" );

await graphClient.ServicePrincipals["{id}"]
	.CheckMemberGroups(groupIdsList)
	.Request()
	.PostAsync()

```