
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveUsageStorage = await graphClient.Reports.GetOneDriveUsageStorage('D7')
	.Request()
	.GetAsync();

```