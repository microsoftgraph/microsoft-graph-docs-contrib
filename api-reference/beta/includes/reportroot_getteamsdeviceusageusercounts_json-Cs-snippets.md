
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsDeviceUsageUserCounts = await graphClient.Reports.GetTeamsDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```