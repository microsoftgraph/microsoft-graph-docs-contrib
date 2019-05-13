
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharedWithMe = await graphClient.Me.Drive.SharedWithMe()
	.Request()
	.GetAsync();

```