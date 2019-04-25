
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleMemberInfo = new Identity
{
	Id = "id-value",
};

var scopedRoleMembership = new ScopedRoleMembership
{
	RoleId = "roleId-value",
	RoleMemberInfo = roleMemberInfo,
};

await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers
	.Request()
	.AddAsync(scopedRoleMembership);

```