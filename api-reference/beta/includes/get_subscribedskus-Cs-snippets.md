
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscribedSku = await graphClient.SubscribedSkus
	.Request()
	.GetAsync();

```