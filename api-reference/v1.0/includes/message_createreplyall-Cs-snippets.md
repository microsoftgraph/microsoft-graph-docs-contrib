
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Messages["{id}"]
	.CreateReplyAll()
	.Request()
	.PostAsync()

```