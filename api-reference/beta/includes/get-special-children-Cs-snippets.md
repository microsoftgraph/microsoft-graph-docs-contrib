
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.Special["{name}"].Children
	.Request()
	.GetAsync();

```