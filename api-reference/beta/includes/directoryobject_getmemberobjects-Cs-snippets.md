
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.Me
	.GetMemberObjects(securityEnabledOnly)
	.Request()
	.PostAsync()

```