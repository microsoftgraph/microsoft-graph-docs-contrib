
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSettings = await graphClient.GroupSettings
	.Request()
	.GetAsync();

```