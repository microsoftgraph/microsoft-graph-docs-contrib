
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var thumbnailSet = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails
	.Request()
	.GetAsync();

```