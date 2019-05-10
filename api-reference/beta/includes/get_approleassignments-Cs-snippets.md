
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignments = await graphClient.ServicePrincipals["{id}"].AppRoleAssignments
	.Request()
	.GetAsync();

```