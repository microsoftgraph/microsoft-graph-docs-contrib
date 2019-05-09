
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recentPlans = await graphClient.Me.Planner.RecentPlans
	.Request()
	.GetAsync();

```