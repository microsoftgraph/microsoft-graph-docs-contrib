
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerGroupsActivityGroupCounts = await graphClient.Reports.GetYammerGroupsActivityGroupCounts('D7')
	.Request()
	.GetAsync();

```