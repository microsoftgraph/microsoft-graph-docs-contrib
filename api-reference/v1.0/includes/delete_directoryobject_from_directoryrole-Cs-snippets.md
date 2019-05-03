
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryRoles["{id}"].Members["{id}"]
	.Request()
	.DeleteAsync();

```