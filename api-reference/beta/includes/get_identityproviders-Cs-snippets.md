
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviders = await graphClient.IdentityProviders
	.Request()
	.GetAsync();

```