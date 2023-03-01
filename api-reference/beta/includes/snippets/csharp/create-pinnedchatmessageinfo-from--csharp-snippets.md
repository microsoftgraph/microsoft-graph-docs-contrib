---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PinnedChatMessageInfo
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"message@odata.bind" , "https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832"
		},
	},
};
var result = await graphClient.Chats["{chat-id}"].PinnedMessages.PostAsync(requestBody);


```