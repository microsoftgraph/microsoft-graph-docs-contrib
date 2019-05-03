
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupLifecyclePolicy = await graphClient.GroupLifecyclePolicies
	.Request()
	.GetAsync();

```