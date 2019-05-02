
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignment = await graphClient.PrivilegedRoleAssignments
	.Request()
	.Filter("isElevated eq true and expirationDateTime ne null or isElevated eq false")
	.GetAsync();

```