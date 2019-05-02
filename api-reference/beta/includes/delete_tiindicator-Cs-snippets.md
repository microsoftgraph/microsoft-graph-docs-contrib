
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Security.TiIndicators["{id}"]
	.Request()
	.DeleteAsync();

```