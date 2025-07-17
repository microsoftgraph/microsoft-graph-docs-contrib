---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ChatMessage
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<at id=\"0\">GraphTesting</at>&nbsp;Hello team",
	},
	Mentions = new List<ChatMessageMention>
	{
		new ChatMessageMention
		{
			Id = 0,
			MentionText = "GraphTesting",
			Mentioned = new ChatMessageMentionedIdentitySet
			{
				Conversation = new TeamworkConversationIdentity
				{
					Id = "68a3e365-f7d9-4a56-b499-24332a9cc572",
					DisplayName = "GraphTesting",
					ConversationIdentityType = TeamworkConversationIdentityType.Team,
				},
			},
		},
	},
	Reactions = new List<ChatMessageReaction>
	{
	},
	MessageHistory = new List<ChatMessageHistoryItem>
	{
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages.PostAsync(requestBody);


```