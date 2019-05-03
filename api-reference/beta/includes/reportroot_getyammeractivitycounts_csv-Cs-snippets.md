
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerActivitySummary = await graphClient.Reports.GetYammerActivityCounts('D7')
	.Request()
	.GetAsync();

```