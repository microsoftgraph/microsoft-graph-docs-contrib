
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSetting = await graphClient.GroupSettings
	.Request()
	.GetAsync();

```