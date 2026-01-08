---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Chats.Item.Messages.ForwardToChat;
using Microsoft.Graph.Beta.Models;

var requestBody = new ForwardToChatPostRequestBody
{
	TargetChatIds = new List<string>
	{
		"19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
	},
	MessageIds = new List<string>
	{
		"1728088338580",
	},
	AdditionalMessage = new ChatMessage
	{
		Body = new ItemBody
		{
			Content = "Hello World",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Chats["{chat-id}"].Messages.ForwardToChat.PostAsForwardToChatPostResponseAsync(requestBody);


```