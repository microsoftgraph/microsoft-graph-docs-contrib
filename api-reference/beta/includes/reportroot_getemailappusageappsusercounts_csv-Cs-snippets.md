
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAppUsageAppsUserCounts = await graphClient.Reports.GetEmailAppUsageAppsUserCounts('D7')
	.Request()
	.GetAsync();

```