
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var search = await graphClient.Me.Drive.Root.Search('{search-query}')
	.Request()
	.GetAsync();

```