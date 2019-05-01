
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"]
	.Mute(clientContext)
	.Request()
	.PostAsync()

```