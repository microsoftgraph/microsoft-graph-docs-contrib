
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = await graphClient.Groups["{id}"].Conversations["{id}"].Threads
	.Request()
	.GetAsync();

```