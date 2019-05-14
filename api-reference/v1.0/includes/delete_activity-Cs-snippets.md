
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Activities["{activity-id}"]
	.Request()
	.DeleteAsync();

```