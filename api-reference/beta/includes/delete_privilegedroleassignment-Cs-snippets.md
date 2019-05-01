
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.PrivilegedRoleAssignments["{id}"]
	.Request()
	.DeleteAsync();

```