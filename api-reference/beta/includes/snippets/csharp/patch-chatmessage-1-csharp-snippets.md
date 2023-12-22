---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ChatMessage
{
	MessageType = ChatMessageType.Message,
	Subject = null,
	Summary = null,
	Importance = ChatMessageImportance.Normal,
	Locale = "en-us",
	From = new ChatMessageFromIdentitySet
	{
		Application = null,
		Device = null,
		User = new Identity
		{
			Id = "3b102402-813e-4e17-a6b2-f841aef1fdfc",
			DisplayName = "Sumit Gupta",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userIdentityType" , "aadUser"
				},
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"conversation" , null
			},
		},
	},
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "Edit text only",
	},
	Attachments = new List<ChatMessageAttachment>
	{
	},
	Mentions = new List<ChatMessageMention>
	{
	},
	Reactions = new List<ChatMessageReaction>
	{
	},
	MessageHistory = new List<ChatMessageHistoryItem>
	{
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].PatchAsync(requestBody);


```