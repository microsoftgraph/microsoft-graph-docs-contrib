
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Events["{id}"]
	.Request()
	.DeleteAsync();

```