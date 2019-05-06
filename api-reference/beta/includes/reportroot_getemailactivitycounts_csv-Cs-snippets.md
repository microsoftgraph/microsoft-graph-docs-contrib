
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailActivitySummary = await graphClient.Reports.GetEmailActivityCounts('D7')
	.Request()
	.GetAsync();

```