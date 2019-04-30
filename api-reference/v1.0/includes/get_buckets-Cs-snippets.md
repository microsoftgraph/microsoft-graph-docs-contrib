
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = await graphClient.Planner.Plans["{plan-id}"].Buckets
	.Request()
	.GetAsync();

```