
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembers = await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers
	.Request()
	.GetAsync();

```