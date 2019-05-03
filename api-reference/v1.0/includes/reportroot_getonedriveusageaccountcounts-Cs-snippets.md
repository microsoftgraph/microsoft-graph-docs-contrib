
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetOneDriveUsageAccountCounts('D7')
	.Request()
	.GetAsync();

```