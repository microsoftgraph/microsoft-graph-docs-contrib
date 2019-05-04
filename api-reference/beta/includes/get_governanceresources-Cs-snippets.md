
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var governanceResource = await graphClient.PrivilegedAccess["azureResources"].Resources
	.Request()
	.GetAsync();

```