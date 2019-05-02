
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Root.Search('{search-query}')
	.Request()
	.GetAsync();

```