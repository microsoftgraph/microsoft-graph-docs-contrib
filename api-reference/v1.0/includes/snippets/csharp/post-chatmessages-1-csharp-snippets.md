---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ChatMessage
{
	Body = new ItemBody
	{
		Content = "Hello world",
	},
};
var result = await graphClient.Chats["{chat-id}"].Messages.PostAsync(requestBody);


```