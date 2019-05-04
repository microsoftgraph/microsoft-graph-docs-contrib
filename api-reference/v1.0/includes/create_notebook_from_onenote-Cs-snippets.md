
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var notebook = new Notebook
{
	DisplayName = "Notebook name",
};

await graphClient.Me.Onenote.Notebooks
	.Request()
	.AddAsync(notebook);

```