---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.chat_message_from_identity_set import ChatMessageFromIdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.chat_message_attachment import ChatMessageAttachment
from msgraph.generated.models.chat_message_mention import ChatMessageMention
from msgraph.generated.models.chat_message_reaction import ChatMessageReaction
from msgraph.generated.models.chat_message_reaction_identity_set import ChatMessageReactionIdentitySet
from msgraph.generated.models.chat_message_history_item import ChatMessageHistoryItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	message_type = ChatMessageType.Message,
	subject = None,
	summary = None,
	importance = ChatMessageImportance.Normal,
	locale = "en-us",
	from = ChatMessageFromIdentitySet(
		application = None,
		device = None,
		user = Identity(
			id = "3b102402-813e-4e17-a6b2-f841aef1fdfc",
			display_name = "Sumit Gupta",
			additional_data = {
					"user_identity_type" : "aadUser",
			}
		),
		additional_data = {
				"conversation" : None,
		}
	),
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>",
	),
	attachments = [
		ChatMessageAttachment(
			id = "e8f78756199240b88448ae0fc6db112d",
			content_type = "application/vnd.microsoft.card.hero",
			content_url = None,
			content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \"\",\r\n      \"value\": \"&i am back& <>= \"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}",
			name = None,
			thumbnail_url = None,
		),
		ChatMessageAttachment(
			id = "638464e32834471ea202007da60a5ae6",
			content_type = "application/vnd.microsoft.card.hero",
			content_url = None,
			content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \"\",\r\n      \"text\": \"text = &message back& <>= \"\",\r\n      \"displayText\": \"displayText = &message back& <>= \"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}",
			name = None,
			thumbnail_url = None,
		),
	],
	mentions = [
	],
	reactions = [
		ChatMessageReaction(
			reaction_type = "angry",
			created_date_time = "2018-10-21T08:10:30.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "laugh",
			created_date_time = "2018-10-21T08:10:32.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "like",
			created_date_time = "2018-10-21T02:17:14.67Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "like",
			created_date_time = "2018-10-21T02:34:40.3Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "4c9041b7-449a-40f7-8855-56da239b9fd1",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "like",
			created_date_time = "2018-10-21T08:10:25.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "heart",
			created_date_time = "2018-10-21T08:10:31.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "sad",
			created_date_time = "2018-10-21T08:10:33.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageReaction(
			reaction_type = "surprised",
			created_date_time = "2018-10-21T08:10:34.489Z",
			user = ChatMessageReactionIdentitySet(
				application = None,
				device = None,
				user = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = None,
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
	],
	message_history = [
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:30.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "angry",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:32.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "laugh",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T02:17:14.67Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "like",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "f1b66449-b46d-49b0-9c3c-53c10a5c818e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T02:34:40.3Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "like",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "4c9041b7-449a-40f7-8855-56da239b9fd1",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:25.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "like",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:31.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "heart",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:33.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "sad",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
		ChatMessageHistoryItem(
			modified_date_time = "2018-10-21T08:10:34.489Z",
			actions = ChatMessageActions.ReactionAdded,
			reaction = ChatMessageReaction(
				reaction_type = "sad",
				user = ChatMessageReactionIdentitySet(
					application = None,
					device = None,
					user = Identity(
						id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
						display_name = None,
						additional_data = {
								"user_identity_type" : "aadUser",
						}
					),
				),
			),
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_chat_message_id('chatMessage-id').patch(request_body)


```