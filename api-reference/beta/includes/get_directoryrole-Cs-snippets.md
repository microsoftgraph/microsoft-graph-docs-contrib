
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = await graphClient.DirectoryRoles["{id}"]
	.Request()
	.GetAsync();

```