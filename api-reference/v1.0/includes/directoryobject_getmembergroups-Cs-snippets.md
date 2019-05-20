
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.DirectoryObjects["{object-id}"]
	.GetMemberGroups(securityEnabledOnly)
	.Request()
	.PostAsync()

```