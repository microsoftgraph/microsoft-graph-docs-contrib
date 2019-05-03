
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = await graphClient.Devices["{id}"]
	.Request()
	.GetAsync();

```