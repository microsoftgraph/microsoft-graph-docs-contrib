
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerDeviceUsageDistributionUserCounts = await graphClient.Reports.GetYammerDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```