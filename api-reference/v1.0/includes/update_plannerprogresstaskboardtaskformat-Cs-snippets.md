
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerProgressTaskBoardTaskFormat = new PlannerProgressTaskBoardTaskFormat
{
	OrderHint = "A6673H Ejkl!",
};

await graphClient.Planner.Tasks["{task-id}"].ProgressTaskBoardFormat
	.Request()
	.UpdateAsync(plannerProgressTaskBoardTaskFormat);

```