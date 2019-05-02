
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = await graphClient.Subscriptions
	.Request()
	.GetAsync();

```