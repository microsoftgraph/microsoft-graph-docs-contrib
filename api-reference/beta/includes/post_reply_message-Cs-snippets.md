
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "Hello World",
};

var chatMessage = new ChatMessage
{
	Body = body,
};

await graphClient.Teams["{id}"].Channels["{id}"].Messages["{id}"].Replies
	.Request()
	.AddAsync(chatMessage);

```