
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerDeviceUsageUserCounts = await graphClient.Reports.GetYammerDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```