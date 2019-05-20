
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetEmailAppUsageAppsUserCounts('D7')
	.Request()
	.GetAsync();

```