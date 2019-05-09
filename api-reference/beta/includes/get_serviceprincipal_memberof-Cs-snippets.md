
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.ServicePrincipals["{id}"].MemberOf
	.Request()
	.GetAsync();

```