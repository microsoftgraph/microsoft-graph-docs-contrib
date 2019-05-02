
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.ServicePrincipals["{id}"].MemberOf
	.Request()
	.GetAsync();

```