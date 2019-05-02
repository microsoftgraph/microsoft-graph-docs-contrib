
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsDeviceUsageDistributionUserCounts = await graphClient.Reports.GetTeamsDeviceUsageDistributionUserCounts('D7')
	.Request()
	.GetAsync();

```