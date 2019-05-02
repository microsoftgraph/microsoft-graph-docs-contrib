
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.GetAsync();

```