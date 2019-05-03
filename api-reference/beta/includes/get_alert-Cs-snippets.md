
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alert = await graphClient.Security.Alerts["{id}"]
	.Request()
	.GetAsync();

```