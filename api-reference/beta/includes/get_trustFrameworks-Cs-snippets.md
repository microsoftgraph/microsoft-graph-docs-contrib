
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var policies = await graphClient.TrustFramework.Policies
	.Request()
	.GetAsync();

```