
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = await graphClient.IdentityProviders
	.Request()
	.GetAsync();

```