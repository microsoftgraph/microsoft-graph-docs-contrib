
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = await graphClient.AppRoleAssignments["{id}"]
	.Request()
	.GetAsync();

```