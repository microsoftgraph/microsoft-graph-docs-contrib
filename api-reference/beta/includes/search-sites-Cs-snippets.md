
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sites = await graphClient.Sites
	.Request()
	.GetAsync();

```