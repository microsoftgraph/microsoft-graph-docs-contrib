
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = await graphClient.DirectoryRoles
	.Request()
	.GetAsync();

```