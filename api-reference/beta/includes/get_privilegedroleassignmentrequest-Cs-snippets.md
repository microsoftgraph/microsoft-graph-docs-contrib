
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignmentRequest = await graphClient.PrivilegedRoleAssignmentRequests
	.Request()
	.GetAsync();

```