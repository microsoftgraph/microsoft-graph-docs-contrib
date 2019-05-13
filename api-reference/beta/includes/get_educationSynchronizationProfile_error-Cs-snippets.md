
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var errors = await graphClient.Education.SynchronizationProfiles["{id}"].Errors
	.Request()
	.GetAsync();

```