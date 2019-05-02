
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessDeviceUsageUserCounts = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserCounts('D7')
	.Request()
	.GetAsync();

```