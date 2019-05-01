
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSynchronizationError = await graphClient.Education.SynchronizationProfiles["{id}"].Errors
	.Request()
	.GetAsync();

```