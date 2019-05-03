
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Users["{id|userPrincipalName}"].Manager
	.Request()
	.GetAsync();

```