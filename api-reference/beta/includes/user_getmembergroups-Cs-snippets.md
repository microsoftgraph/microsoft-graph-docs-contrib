
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.Me
	.GetMemberGroups(securityEnabledOnly)
	.Request()
	.PostAsync()

```