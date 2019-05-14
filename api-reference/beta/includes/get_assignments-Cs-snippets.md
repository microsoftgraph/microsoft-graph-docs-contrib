
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignments = await graphClient.PrivilegedRoles["{id}"].Assignments
	.Request()
	.GetAsync();

```