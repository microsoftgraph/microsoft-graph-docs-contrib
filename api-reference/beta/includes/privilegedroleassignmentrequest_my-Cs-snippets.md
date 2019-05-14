
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var my = await graphClient.PrivilegedRoleAssignmentRequests.My()
	.Request()
	.GetAsync();

```