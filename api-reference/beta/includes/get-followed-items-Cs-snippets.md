
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var following = await graphClient.Me.Drive.Following
	.Request()
	.GetAsync();

```