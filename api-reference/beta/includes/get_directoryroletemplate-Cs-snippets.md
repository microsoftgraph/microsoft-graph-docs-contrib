
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRoleTemplate = await graphClient.DirectoryRoleTemplates["{id}"]
	.Request()
	.GetAsync();

```