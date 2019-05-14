
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveUsageAccountDetail = await graphClient.Reports.GetOneDriveUsageAccountDetail('D7')
	.Request()
	.GetAsync();

```