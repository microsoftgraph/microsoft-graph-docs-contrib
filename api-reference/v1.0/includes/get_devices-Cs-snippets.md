
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var devices = await graphClient.Devices
	.Request()
	.GetAsync();

```