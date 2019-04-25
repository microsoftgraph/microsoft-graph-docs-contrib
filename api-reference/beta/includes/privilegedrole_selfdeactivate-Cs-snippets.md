
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.PrivilegedRoles["{id}"]
	.SelfDeactivate()
	.Request()
	.PostAsync()

```