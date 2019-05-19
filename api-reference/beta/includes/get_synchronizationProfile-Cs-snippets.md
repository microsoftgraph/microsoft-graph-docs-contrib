
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.SynchronizationProfiles["{id}"]
	.Request()
	.DeleteAsync();

```