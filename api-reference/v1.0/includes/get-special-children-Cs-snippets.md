
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Me.Drive.Special["{special-folder-name}"].Children
	.Request()
	.GetAsync();

```