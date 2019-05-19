
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"].Threads["{id}"]
	.Request()
	.DeleteAsync();

```