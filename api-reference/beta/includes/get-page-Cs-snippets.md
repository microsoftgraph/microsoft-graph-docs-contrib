
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sitePage = await graphClient.Sites["{site-id}"].Pages["{page-id}"]
	.Request()
	.GetAsync();

```