---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ChatMessage
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Hello World",
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].Replies.PostAsync(requestBody);


```