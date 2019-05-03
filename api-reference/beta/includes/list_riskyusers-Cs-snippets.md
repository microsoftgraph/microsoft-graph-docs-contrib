
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUser = await graphClient.RiskyUsers
	.Request()
	.GetAsync();

```