
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var yammerGroupsActivityDetail = await graphClient.Reports.GetYammerGroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```