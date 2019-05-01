
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetEmailAppUsageVersionsUserCounts('D7')
	.Request()
	.GetAsync();

```