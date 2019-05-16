
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Users["{user-id}"]
	.Request()
	.GetAsync();

```