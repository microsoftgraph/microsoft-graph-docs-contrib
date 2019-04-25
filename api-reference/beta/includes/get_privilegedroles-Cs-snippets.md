
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRole = await graphClient.PrivilegedRoles
	.Request()
	.GetAsync();

```