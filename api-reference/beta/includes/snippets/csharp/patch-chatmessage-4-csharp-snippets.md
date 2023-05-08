---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
		ContentType = BodyType.Html,
		Content = "<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>",
	},
	Attachments = new List<ChatMessageAttachment>
	{
		new ChatMessageAttachment
		{
			Id = "e8f78756199240b88448ae0fc6db112d",
			ContentType = "application/vnd.microsoft.card.hero",
			ContentUrl = null,
			Content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \\"\",\r\n      \"value\": \"&i am back& <>= \\"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}",
			Name = null,
			ThumbnailUrl = null,
		},
		new ChatMessageAttachment
		{
			Id = "638464e32834471ea202007da60a5ae6",
			ContentType = "application/vnd.microsoft.card.hero",
			ContentUrl = null,
			Content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \\"\",\r\n      \"text\": \"text = &message back& <>= \\"\",\r\n      \"displayText\": \"displayText = &message back& <>= \\"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}",
			Name = null,
			ThumbnailUrl = null,
		},
	},
	Mentions = new List<ChatMessageMention>
	{
	},
	Reactions = new List<ChatMessageReaction>
	{
		new ChatMessageReaction
		{
			ReactionType = "angry",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:30.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "laugh",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:32.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "like",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T02:17:14.67Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "like",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T02:34:40.3Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "4c9041b7-449a-40f7-8855-56da239b9fd1",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "like",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:25.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "heart",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:31.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "sad",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:33.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
		new ChatMessageReaction
		{
			ReactionType = "surprised",
			CreatedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:34.489Z"),
			User = new ChatMessageReactionIdentitySet
			{
				Application = null,
				Device = null,
				User = new Identity
				{
					Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					DisplayName = null,
					AdditionalData = new Dictionary<string, object>
					{
						{
							"userIdentityType" , "aadUser"
						},
					},
				},
			},
		},
	},
	MessageHistory = new List<ChatMessageHistoryItem>
	{
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:30.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "angry",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:32.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "laugh",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T02:17:14.67Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "like",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T02:34:40.3Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "like",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "4c9041b7-449a-40f7-8855-56da239b9fd1",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:25.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "like",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:31.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "heart",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:33.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "sad",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
		new ChatMessageHistoryItem
		{
			ModifiedDateTime = DateTimeOffset.Parse("2018-10-21T08:10:34.489Z"),
			Actions = ChatMessageActions.ReactionAdded,
			Reaction = new ChatMessageReaction
			{
				ReactionType = "sad",
				User = new ChatMessageReactionIdentitySet
				{
					Application = null,
					Device = null,
					User = new Identity
					{
						Id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						DisplayName = null,
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userIdentityType" , "aadUser"
							},
						},
					},
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].PatchAsync(requestBody);


```