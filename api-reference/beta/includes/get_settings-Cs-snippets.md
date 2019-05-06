
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = await graphClient.Settings
	.Request()
	.GetAsync();

```