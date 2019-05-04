
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsUserActivityUserCounts = await graphClient.Reports.GetTeamsUserActivityUserCounts('D7')
	.Request()
	.GetAsync();

```