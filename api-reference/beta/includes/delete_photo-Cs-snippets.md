
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{id|userPrincipalName}"].Photo
	.Request()
	.DeleteAsync();

```