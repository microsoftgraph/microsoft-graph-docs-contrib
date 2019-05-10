
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.ServicePrincipals.Delta()
	.Request()
	.GetAsync();

```