
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteActivitySummary = await graphClient.Reports.GetOneDriveActivityFileCounts('D7')
	.Request()
	.GetAsync();

```