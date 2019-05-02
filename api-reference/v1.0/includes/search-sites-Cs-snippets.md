
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var site = await graphClient.Sites
	.Request()
	.GetAsync();

```