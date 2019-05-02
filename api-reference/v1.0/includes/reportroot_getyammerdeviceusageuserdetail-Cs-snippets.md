
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetYammerDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```