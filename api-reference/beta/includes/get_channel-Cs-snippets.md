
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = await graphClient.Teams["{id}"].Channels["{id}"]
	.Request()
	.GetAsync();

```