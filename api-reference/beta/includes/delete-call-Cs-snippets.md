
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.App.Calls["{id}"]
	.Request()
	.DeleteAsync();

```