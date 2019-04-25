
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Settings["{id}"]
	.Request()
	.DeleteAsync();

```