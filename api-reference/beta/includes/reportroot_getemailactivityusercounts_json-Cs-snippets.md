
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailActivitySummary = await graphClient.Reports.GetEmailActivityUserCounts('D7')
	.Request()
	.GetAsync();

```