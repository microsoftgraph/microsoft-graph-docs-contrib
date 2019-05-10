
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsUserActivityUserCounts = await graphClient.Reports.GetTeamsUserActivityUserCounts('D7')
	.Request()
	.GetAsync();

```