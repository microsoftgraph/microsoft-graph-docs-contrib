
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var notebook = await graphClient.Me.Onenote.Notebooks
	.Request()
	.GetAsync();

```