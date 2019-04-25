
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerDelta = await graphClient.Me.Planner.All.Delta()
	.Request()
	.GetAsync();

```