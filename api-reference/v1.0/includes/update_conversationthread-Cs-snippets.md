
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	IsLocked = true,
};

await graphClient.Groups["{id}"].Threads["{id}"]
	.Request()
	.UpdateAsync(conversationThread);

```