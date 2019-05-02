
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetYammerActivityUserCounts('D7')
	.Request()
	.GetAsync();

```