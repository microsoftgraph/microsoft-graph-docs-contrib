
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerDeviceUsageUserDetail = await graphClient.Reports.GetYammerDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```