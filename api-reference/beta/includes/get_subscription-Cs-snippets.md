
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = await graphClient.Subscriptions["{id}"]
	.Request()
	.GetAsync();

```