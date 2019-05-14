
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerProgressTaskBoardTaskFormat = await graphClient.Planner.Tasks["'id'"].ProgressTaskBoardFormat
	.Request()
	.GetAsync();

```