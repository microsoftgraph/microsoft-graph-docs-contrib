
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItemVersion = await graphClient.Me.Drive.Items["{item-id}"].Versions
	.Request()
	.GetAsync();

```