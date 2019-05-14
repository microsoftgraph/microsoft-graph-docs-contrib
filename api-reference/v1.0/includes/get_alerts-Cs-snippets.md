
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alerts = await graphClient.Security.Alerts
	.Request()
	.GetAsync();

```