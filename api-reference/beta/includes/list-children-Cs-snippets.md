
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Drives["{drive-id}"].Items["{item-id}"].Children
	.Request()
	.GetAsync();

```