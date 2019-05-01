
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Schools["10002"]
	.Request()
	.DeleteAsync();

```