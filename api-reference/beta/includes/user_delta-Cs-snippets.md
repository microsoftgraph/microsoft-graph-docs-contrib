
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Users.Delta()
	.Request()
	.GetAsync();

```