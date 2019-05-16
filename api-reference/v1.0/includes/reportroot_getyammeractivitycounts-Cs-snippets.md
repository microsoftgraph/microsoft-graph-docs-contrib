
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetYammerActivityCounts('D7')
	.Request()
	.GetAsync();

```