
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var rolesList = new List<String>();
rolesList.Add( "read" );

var permission = new Permission
{
	Roles = rolesList,
};

await graphClient.Me.Drive.Items["{item-id}"].Permissions["{perm-id}"]
	.Request()
	.UpdateAsync(permission);

```