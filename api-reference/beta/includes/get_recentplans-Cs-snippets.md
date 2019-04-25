
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = await graphClient.Me.Planner.RecentPlans
	.Request()
	.GetAsync();

```