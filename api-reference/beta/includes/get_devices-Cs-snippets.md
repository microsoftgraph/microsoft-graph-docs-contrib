
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = await graphClient.Devices
	.Request()
	.GetAsync();

```