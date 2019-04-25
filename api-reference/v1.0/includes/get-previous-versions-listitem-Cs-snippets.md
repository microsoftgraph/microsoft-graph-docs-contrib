
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var listItemVersion = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"].Versions
	.Request()
	.GetAsync();

```