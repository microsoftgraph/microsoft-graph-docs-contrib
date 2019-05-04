
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = new PlannerBucket
{
	Name = "Development",
};

await graphClient.Planner.Buckets["{bucket-id}"]
	.Request()
	.UpdateAsync(plannerBucket);

```