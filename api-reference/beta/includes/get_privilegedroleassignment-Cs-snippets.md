
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignment = await graphClient.PrivilegedRoleAssignments["{id}"]
	.Request()
	.GetAsync();

```