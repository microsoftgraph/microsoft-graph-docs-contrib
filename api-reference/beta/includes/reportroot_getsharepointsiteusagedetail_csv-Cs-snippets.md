
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointSiteUsageDetail = await graphClient.Reports.GetSharePointSiteUsageDetail('D7')
	.Request()
	.GetAsync();

```