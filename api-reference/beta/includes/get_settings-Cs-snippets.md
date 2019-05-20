
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var settings = await graphClient.Settings
	.Request()
	.GetAsync();

```