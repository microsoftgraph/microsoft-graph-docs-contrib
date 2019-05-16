
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = await graphClient.Planner.Buckets["{bucket-id}"]
	.Request()
	.GetAsync();

```