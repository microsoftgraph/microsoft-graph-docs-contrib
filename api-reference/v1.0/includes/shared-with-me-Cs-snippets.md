
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Me.Drive.SharedWithMe()
	.Request()
	.GetAsync();

```