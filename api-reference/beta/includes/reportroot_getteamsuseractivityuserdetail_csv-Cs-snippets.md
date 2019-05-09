
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsUserActivityUserDetail = await graphClient.Reports.GetTeamsUserActivityUserDetail('D7')
	.Request()
	.GetAsync();

```