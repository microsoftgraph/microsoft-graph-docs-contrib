
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oAuth2PermissionGrant = await graphClient.ServicePrincipals["{id}"].Oauth2PermissionGrants
	.Request()
	.GetAsync();

```