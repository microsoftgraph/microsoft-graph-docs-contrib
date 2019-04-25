
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembership = await graphClient.DirectoryRoles["{id}"].ScopedMembers
	.Request()
	.GetAsync();

```