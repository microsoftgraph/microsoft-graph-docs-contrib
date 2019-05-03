
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.Contacts["{id}"]
	.GetMemberGroups(securityEnabledOnly)
	.Request()
	.PostAsync()

```