
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Users["{idOrUserPrincipalName}"].Drive
	.Request()
	.GetAsync();

```