
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucketTaskBoardTaskFormat = new PlannerBucketTaskBoardTaskFormat
{
	OrderHint = "A6673H Ejkl!",
};

await graphClient.Planner.Tasks["{task-id}"].BucketTaskBoardFormat
	.Request()
	.UpdateAsync(plannerBucketTaskBoardTaskFormat);

```