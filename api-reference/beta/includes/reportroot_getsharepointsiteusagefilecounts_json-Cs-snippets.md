
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointSiteUsageFileCounts = await graphClient.Reports.GetSharePointSiteUsageFileCounts('D7')
	.Request()
	.GetAsync();

```