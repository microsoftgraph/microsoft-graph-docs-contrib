
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAppUsageUserDetail = await graphClient.Reports.GetEmailAppUsageUserDetail('D7')
	.Request()
	.GetAsync();

```