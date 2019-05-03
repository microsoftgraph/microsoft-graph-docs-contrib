
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Onenote.Pages["{id}"]
	.Request()
	.DeleteAsync();

```