
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oneDriveUsageAccountDetail = await graphClient.Reports.GetOneDriveUsageAccountDetail('D7')
	.Request()
	.GetAsync();

```