
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Chats["{id}"].Messages
	.Request()
	.GetAsync();

```