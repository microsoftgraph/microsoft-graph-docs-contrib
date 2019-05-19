
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Agreements["'id'"]
	.Request()
	.DeleteAsync();

```