
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscriptions = await graphClient.Subscriptions
	.Request()
	.GetAsync();

```