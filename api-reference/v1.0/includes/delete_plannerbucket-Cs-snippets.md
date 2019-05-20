
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Buckets["{id}"]
	.Request()
	.DeleteAsync();

```