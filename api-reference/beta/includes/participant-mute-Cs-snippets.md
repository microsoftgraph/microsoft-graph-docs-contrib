
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"].Participants["{id}"]
	.Mute(clientContext)
	.Request()
	.PostAsync()

```