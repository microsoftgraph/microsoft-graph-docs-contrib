
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Users["13019"]
	.Request()
	.DeleteAsync();

```