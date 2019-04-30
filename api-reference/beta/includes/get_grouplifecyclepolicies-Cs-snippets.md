
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupLifecyclePolicy = await graphClient.Groups["{id}"].GroupLifecyclePolicies
	.Request()
	.GetAsync();

```