
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var Comment = "Cancelling for this week due to all hands";

await graphClient.Me.Events["{id}"]
	.Cancel(comment)
	.Request()
	.PostAsync()

```