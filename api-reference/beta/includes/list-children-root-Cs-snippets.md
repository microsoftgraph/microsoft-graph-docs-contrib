
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Me.Drive.Root.Children
	.Request()
	.GetAsync();

```