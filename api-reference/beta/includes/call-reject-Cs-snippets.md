
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reason = "none";

await graphClient.App.Calls["{id}"]
	.Reject(reason)
	.Request()
	.PostAsync()

```