
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = await graphClient.Chats["{id}"].Messages
	.Request()
	.GetAsync();

```