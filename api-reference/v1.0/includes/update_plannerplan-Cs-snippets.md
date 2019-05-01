
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlan = new PlannerPlan
{
	Title = "title-value",
};

await graphClient.Planner.Plans["{plan-id}"]
	.Request()
	.UpdateAsync(plannerPlan);

```