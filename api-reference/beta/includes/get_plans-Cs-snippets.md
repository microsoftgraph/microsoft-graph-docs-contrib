
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = await graphClient.Me.Planner.Plans
	.Request()
	.GetAsync();

```