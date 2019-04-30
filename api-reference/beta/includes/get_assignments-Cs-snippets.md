
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignment = await graphClient.PrivilegedRoles["{id}"].Assignments
	.Request()
	.GetAsync();

```