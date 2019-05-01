
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.Request()
	.DeleteAsync();

```