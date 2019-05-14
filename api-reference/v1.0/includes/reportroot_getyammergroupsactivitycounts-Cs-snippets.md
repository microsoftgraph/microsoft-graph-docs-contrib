
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetYammerGroupsActivityCounts('D7')
	.Request()
	.GetAsync();

```