
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucketTaskBoardTaskFormat = await graphClient.Planner.Tasks["{task-id}"].BucketTaskBoardFormat
	.Request()
	.GetAsync();

```