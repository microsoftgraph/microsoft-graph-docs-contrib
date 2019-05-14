
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = await graphClient.Groups["{id}"].Threads["{id}"]
	.Request()
	.GetAsync();

```