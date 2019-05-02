
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oneDriveUsageFileCounts = await graphClient.Reports.GetOneDriveUsageFileCounts('D7')
	.Request()
	.GetAsync();

```