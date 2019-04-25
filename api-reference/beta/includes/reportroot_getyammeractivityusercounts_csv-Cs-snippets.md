
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerActivitySummary = await graphClient.Reports.GetYammerActivityUserCounts('D7')
	.Request()
	.GetAsync();

```