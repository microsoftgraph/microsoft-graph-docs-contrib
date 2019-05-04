
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var destinationId = "destinationId-value";

await graphClient.Me.Messages["{id}"]
	.Copy(destinationId)
	.Request()
	.PostAsync()

```