---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ChatMessage
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>",
	},
	Attachments = new List<ChatMessageAttachment>
	{
		new ChatMessageAttachment
		{
			Id = "74d20c7f34aa4a7fb74e2b30004247c5",
			ContentType = "application/vnd.microsoft.card.fluidEmbedCard",
			Content = "{\"componentUrl\": \"{LoopComponent_url}\", \"sourceType\": \"Compose\"}",
			Name = null,
			ThumbnailUrl = null,
			TeamsAppId = "FluidEmbedCard",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Chats["{chat-id}"].Messages.PostAsync(requestBody);


```