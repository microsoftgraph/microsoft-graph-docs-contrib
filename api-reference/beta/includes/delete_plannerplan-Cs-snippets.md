
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Plans["'id'"]
	.Request()
	.DeleteAsync();

```