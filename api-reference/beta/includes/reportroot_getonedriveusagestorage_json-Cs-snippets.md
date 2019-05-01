
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteUsageStorage = await graphClient.Reports.GetOneDriveUsageStorage('D7')
	.Request()
	.GetAsync();

```