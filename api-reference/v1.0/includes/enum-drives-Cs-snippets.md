
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Me.Drives
	.Request()
	.GetAsync();

```