
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oneDriveUsageAccountCounts = await graphClient.Reports.GetOneDriveUsageAccountCounts('D7')
	.Request()
	.GetAsync();

```