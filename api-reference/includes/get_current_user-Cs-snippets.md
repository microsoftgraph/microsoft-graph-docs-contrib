
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = await graphClient.Me
	.Request()
	.GetAsync();

```