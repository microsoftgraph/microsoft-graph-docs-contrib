
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Root.Delta('1230919asd190410jlka')
	.Request()
	.GetAsync();

```