
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.PrivilegedRoleAssignments["{id}"]
	.MakeEligible()
	.Request()
	.PostAsync()

```