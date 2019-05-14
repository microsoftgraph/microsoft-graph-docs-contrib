
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Me.Drive.Special["{name}"].Children
	.Request()
	.GetAsync();

```