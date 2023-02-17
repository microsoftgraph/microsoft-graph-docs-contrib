---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessage = new ChatMessage
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
			UserIdentityType = TeamworkUserIdentityType.AadUser
		},
		AdditionalData = new Dictionary<string, object>()
		{
			{"conversation", "null"}
		}
	},
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "Edit text only"
	},
	Attachments = new List<ChatMessageAttachment>()
	{
	},
	Mentions = new List<ChatMessageMention>()
	{
	},
	Reactions = new List<ChatMessageReaction>()
	{
	},
	MessageHistory = new List<ChatMessageHistoryItem>()
	{
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"]
	.Request()
	.UpdateAsync(chatMessage);

```