
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.ServicePrincipals["{id}"]
	.GetMemberGroups(securityEnabledOnly)
	.Request()
	.PostAsync()

```