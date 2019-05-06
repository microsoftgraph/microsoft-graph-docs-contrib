
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skypeForBusinessDeviceUsageUserDetail = await graphClient.Reports.GetSkypeForBusinessDeviceUsageUserDetail('D7')
	.Request()
	.GetAsync();

```