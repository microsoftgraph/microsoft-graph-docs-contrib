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
		Content = "<emoji alt=\"😶‍🌫️\"></emoji>",
	},
};
var result = await graphClient.Chats["{chat-id}"].Messages.PostAsync(requestBody);


```