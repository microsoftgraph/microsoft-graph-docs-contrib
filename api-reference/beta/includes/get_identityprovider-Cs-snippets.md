
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = await graphClient.IdentityProviders["Amazon-OAuth"]
	.Request()
	.GetAsync();

```