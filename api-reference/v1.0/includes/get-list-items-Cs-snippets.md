
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var items = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request()
	.GetAsync();

```