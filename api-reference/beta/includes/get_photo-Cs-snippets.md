
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profilePhoto = await graphClient.Users["{id|userPrincipalName}"].Photo
	.Request()
	.GetAsync();

```