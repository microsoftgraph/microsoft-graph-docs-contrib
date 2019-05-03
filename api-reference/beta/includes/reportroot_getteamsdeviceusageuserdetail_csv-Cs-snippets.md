
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsDeviceUsageUserDetail = await graphClient.Reports.GetTeamsDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```