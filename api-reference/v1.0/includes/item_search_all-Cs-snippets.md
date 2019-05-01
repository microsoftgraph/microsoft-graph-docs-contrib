
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Search('{search-query}')
	.Request()
	.GetAsync();

```