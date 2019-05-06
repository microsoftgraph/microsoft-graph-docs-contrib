
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Tasks["{id}"]
	.Request()
	.DeleteAsync();

```