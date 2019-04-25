
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityAction = await graphClient.Security.SecurityActions
	.Request()
	.GetAsync();

```