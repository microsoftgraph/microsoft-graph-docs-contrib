
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetYammerDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```