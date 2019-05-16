
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```