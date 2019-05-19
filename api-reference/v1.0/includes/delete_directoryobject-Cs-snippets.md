
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryObjects["{id}"]
	.Request()
	.DeleteAsync();

```