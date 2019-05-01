
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSharePointSiteUsagePages('D7')
	.Request()
	.GetAsync();

```