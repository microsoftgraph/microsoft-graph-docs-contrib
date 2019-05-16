
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"]
	.Unmute(clientContext)
	.Request()
	.PostAsync()

```