
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directReports = await graphClient.Me.DirectReports
	.Request()
	.GetAsync();

```