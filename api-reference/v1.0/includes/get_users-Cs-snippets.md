
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Users
	.Request()
	.GetAsync();

```