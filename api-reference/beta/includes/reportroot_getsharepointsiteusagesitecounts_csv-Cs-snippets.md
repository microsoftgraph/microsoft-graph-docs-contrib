
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointSiteUsageSiteCounts = await graphClient.Reports.GetSharePointSiteUsageSiteCounts('D7')
	.Request()
	.GetAsync();

```