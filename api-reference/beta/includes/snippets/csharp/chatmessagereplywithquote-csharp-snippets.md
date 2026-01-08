---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Chats.Item.Messages.ReplyWithQuote;
using Microsoft.Graph.Beta.Models;

var requestBody = new ReplyWithQuotePostRequestBody
{
	MessageIds = new List<string>
	{
		"1728088338580",
	},
	ReplyMessage = new ChatMessage
	{
		Body = new ItemBody
		{
			Content = "Hello World",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Chats["{chat-id}"].Messages.ReplyWithQuote.PostAsync(requestBody);


```