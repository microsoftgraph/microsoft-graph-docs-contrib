
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerGroupsActivityCounts = await graphClient.Reports.GetYammerGroupsActivityCounts('D7')
	.Request()
	.GetAsync();

```