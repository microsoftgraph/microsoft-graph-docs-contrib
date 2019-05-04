
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recentNotebook = await graphClient.Me.Onenote.Notebooks.GetRecentNotebooks(true)
	.Request()
	.GetAsync();

```