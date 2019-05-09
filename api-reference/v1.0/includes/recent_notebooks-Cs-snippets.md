
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getRecentNotebooks = await graphClient.Me.Onenote.Notebooks.GetRecentNotebooks(true)
	.Request()
	.GetAsync();

```