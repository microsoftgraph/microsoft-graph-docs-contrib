---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
{
	MessageType = ChatMessageType.Message,
	DeletedDateTime = null,
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
			Id = "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40",
			DisplayName = "Sumit Gupta",
			UserIdentityType = TeamworkUserIdentityType.AadUser
		},
		AdditionalData = new Dictionary<string, object>()
		{
			{"conversation", "null"}
		}
	},
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH"
	},
	Attachments = new List<ChatMessageAttachment>()
	{
	},
	Mentions = new List<ChatMessageMention>()
	{
		new ChatMessageMention
		{
			Id = 0,
			MentionText = "Raghav",
			Mentioned = new ChatMessageMentionedIdentitySet
			{
				Application = null,
				Device = null,
				Conversation = null,
				User = new Identity
				{
					Id = "f1b66449-b46d-49b0-9c3c-53c10234c818e",
					DisplayName = "Raghav Mankad",
					UserIdentityType = TeamworkUserIdentityType.AadUser
				}
			}
		},
		new ChatMessageMention
		{
			Id = 1,
			MentionText = "TestGlobalBot",
			Mentioned = new ChatMessageMentionedIdentitySet
			{
				Application = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = "TestGlobalBot",
					ApplicationIdentityType = TeamworkApplicationIdentityType.Bot
				},
				Device = null,
				Conversation = null,
				User = null
			}
		}
	},
	Reactions = new List<ChatMessageReaction>()
	{
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"]
	.Request()
	.UpdateAsync(chatMessage);

```