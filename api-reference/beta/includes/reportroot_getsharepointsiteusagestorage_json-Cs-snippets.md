
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteUsageStorage = await graphClient.Reports.GetSharePointSiteUsageStorage('D7')
	.Request()
	.GetAsync();

```