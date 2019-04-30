
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Subscriptions["{id}"]
	.Request()
	.DeleteAsync();

```