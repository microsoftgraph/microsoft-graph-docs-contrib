
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAppUsageVersionsUserCounts = await graphClient.Reports.GetEmailAppUsageVersionsUserCounts('D7')
	.Request()
	.GetAsync();

```