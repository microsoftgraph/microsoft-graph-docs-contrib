
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAppUsageUserCounts = await graphClient.Reports.GetEmailAppUsageUserCounts('D7')
	.Request()
	.GetAsync();

```