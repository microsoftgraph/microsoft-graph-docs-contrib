
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = false;

await graphClient.Groups["{id}"]
	.GetMemberObjects(securityEnabledOnly)
	.Request()
	.PostAsync()

```