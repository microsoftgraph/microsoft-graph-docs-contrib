
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Messages["{id}"]
	.CreateReply()
	.Request()
	.PostAsync()

```