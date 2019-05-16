
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Directory.DeletedItems["{object-id}"]
	.Request()
	.DeleteAsync();

```