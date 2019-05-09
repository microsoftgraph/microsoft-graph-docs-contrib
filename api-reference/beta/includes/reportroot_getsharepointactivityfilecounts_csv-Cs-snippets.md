
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteActivitySummary = await graphClient.Reports.GetSharePointActivityFileCounts('D7')
	.Request()
	.GetAsync();

```