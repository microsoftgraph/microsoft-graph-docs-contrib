
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var list = await graphClient.Sites["{site-id}"].Lists
	.Request()
	.GetAsync();

```