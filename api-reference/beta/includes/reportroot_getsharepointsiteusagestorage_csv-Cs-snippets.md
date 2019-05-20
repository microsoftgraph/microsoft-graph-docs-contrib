
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsageStorage = await graphClient.Reports.GetSharePointSiteUsageStorage('D7')
	.Request()
	.GetAsync();

```