
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetOneDriveUsageFileCounts('D7')
	.Request()
	.GetAsync();

```