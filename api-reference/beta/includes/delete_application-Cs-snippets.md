
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{id}"]
	.Request()
	.DeleteAsync();

```