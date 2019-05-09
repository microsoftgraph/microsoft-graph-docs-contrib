
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Special["{special-folder-name}"].Children
	.Request()
	.GetAsync();

```