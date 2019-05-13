
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerGroupsActivityDetail = await graphClient.Reports.GetYammerGroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```