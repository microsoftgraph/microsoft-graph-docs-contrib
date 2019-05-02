
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointSiteUsagePages = await graphClient.Reports.GetSharePointSiteUsagePages('D7')
	.Request()
	.GetAsync();

```