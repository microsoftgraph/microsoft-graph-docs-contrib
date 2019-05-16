
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plans = await graphClient.Me.Planner.Plans
	.Request()
	.GetAsync();

```