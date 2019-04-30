
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSynchronizationProfileStatus = await graphClient.Education.SynchronizationProfiles["{id}"].ProfileStatus
	.Request()
	.GetAsync();

```