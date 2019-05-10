
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailAppUsageVersionsUserCounts = await graphClient.Reports.GetEmailAppUsageVersionsUserCounts('D7')
	.Request()
	.GetAsync();

```