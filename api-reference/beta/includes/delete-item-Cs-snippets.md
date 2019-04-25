
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"]
	.Request()
	.DeleteAsync();

```