
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsUserActivityCounts = await graphClient.Reports.GetTeamsUserActivityCounts('D7')
	.Request()
	.GetAsync();

```