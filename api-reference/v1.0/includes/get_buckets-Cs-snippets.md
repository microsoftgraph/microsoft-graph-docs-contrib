
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var buckets = await graphClient.Planner.Plans["{plan-id}"].Buckets
	.Request()
	.GetAsync();

```