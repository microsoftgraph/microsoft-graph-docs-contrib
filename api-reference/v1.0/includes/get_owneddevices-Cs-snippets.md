
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ownedDevices = await graphClient.Me.OwnedDevices
	.Request()
	.GetAsync();

```