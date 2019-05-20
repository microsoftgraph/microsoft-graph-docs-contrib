
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsageDetail = await graphClient.Reports.GetSharePointSiteUsageDetail('D7')
	.Request()
	.GetAsync();

```