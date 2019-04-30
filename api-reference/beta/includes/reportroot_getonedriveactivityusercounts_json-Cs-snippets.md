
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteActivitySummary = await graphClient.Reports.GetOneDriveActivityUserCounts('D7')
	.Request()
	.GetAsync();

```