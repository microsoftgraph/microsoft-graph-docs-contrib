
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = await graphClient.ServicePrincipals["{id}"].AppRoleAssignments
	.Request()
	.GetAsync();

```