
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.GroupLifecyclePolicies["{id}"]
	.Request()
	.DeleteAsync();

```