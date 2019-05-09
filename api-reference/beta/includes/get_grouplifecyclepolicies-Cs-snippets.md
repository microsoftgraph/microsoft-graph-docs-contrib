
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupLifecyclePolicies = await graphClient.Groups["{id}"].GroupLifecyclePolicies
	.Request()
	.GetAsync();

```