
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trustFrameworkPolicy = await graphClient.TrustFramework.Policies
	.Request()
	.GetAsync();

```