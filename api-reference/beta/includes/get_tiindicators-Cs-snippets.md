
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tiIndicator = await graphClient.Security.TiIndicators
	.Request()
	.GetAsync();

```