
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var destinationId = "deleteditems";

await graphClient.Me.Messages["AAMkADhAAATs28OAAA="]
	.Move(destinationId)
	.Request()
	.PostAsync()

```