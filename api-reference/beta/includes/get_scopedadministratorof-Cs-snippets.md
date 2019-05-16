
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedAdministratorOf = await graphClient.Me.ScopedAdministratorOf
	.Request()
	.GetAsync();

```