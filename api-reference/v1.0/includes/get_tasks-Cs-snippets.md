
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTask = await graphClient.Me.Planner.Tasks
	.Request()
	.GetAsync();

```