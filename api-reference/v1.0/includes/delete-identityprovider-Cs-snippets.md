
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityProviders["Amazon-OAuth"]
	.Request()
	.DeleteAsync();

```