
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.DirectoryObjects["{object-id}"]
	.GetMemberObjects(securityEnabledOnly)
	.Request()
	.PostAsync()

```