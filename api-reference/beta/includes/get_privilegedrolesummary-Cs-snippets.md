
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleSummary = await graphClient.PrivilegedRoles["{id}"].Summary
	.Request()
	.GetAsync();

```