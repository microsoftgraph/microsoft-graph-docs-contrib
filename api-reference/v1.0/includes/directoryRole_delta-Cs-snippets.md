
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = await graphClient.DirectoryRoles.Delta()
	.Request()
	.GetAsync();

```