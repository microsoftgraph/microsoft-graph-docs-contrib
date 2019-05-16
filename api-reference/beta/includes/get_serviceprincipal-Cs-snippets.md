
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = await graphClient.ServicePrincipals["{id}"]
	.Request()
	.GetAsync();

```