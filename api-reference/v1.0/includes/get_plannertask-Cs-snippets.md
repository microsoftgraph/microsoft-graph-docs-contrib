
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTask = await graphClient.Planner.Tasks["{task-id}"]
	.Request()
	.GetAsync();

```