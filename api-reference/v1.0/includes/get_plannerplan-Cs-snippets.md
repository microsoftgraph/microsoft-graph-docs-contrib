
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = await graphClient.Planner.Plans["{plan-id}"]
	.Request()
	.GetAsync();

```