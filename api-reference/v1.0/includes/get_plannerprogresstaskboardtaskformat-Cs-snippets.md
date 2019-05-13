
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerProgressTaskBoardTaskFormat = await graphClient.Planner.Tasks["{task-id}"].ProgressTaskBoardFormat
	.Request()
	.GetAsync();

```