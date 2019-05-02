
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembership = await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers
	.Request()
	.GetAsync();

```