
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerBucket = await graphClient.Planner.Plans["2txjA-BMZEq-bKi6Wfj5aGQAB1OJ"].Buckets
	.Request()
	.GetAsync();

```