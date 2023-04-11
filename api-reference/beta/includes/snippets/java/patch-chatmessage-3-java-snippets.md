---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
chatMessage.messageType = ChatMessageType.MESSAGE;
chatMessage.subject = null;
chatMessage.summary = null;
chatMessage.importance = ChatMessageImportance.NORMAL;
chatMessage.locale = "en-us";
ChatMessageFromIdentitySet from = new ChatMessageFromIdentitySet();
from.application = null;
from.device = null;
Identity user = new Identity();
user.id = "3b102402-813e-4e17-a6b2-f841aef1fdfc";
user.displayName = "Sumit Gupta";
user.userIdentityType = TeamworkUserIdentityType.AAD_USER;
from.user = user;
from.conversation = null;
chatMessage.from = from;
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>";
chatMessage.body = body;
LinkedList<ChatMessageAttachment> attachmentsList = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment attachments = new ChatMessageAttachment();
attachments.id = "e8f78756199240b88448ae0fc6db112d";
attachments.contentType = "application/vnd.microsoft.card.hero";
attachments.contentUrl = null;
attachments.content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \\\"\",\r\n      \"value\": \"&i am back& <>= \\\"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}";
attachments.name = null;
attachments.thumbnailUrl = null;
attachmentsList.add(attachments);
ChatMessageAttachment attachments1 = new ChatMessageAttachment();
attachments1.id = "638464e32834471ea202007da60a5ae6";
attachments1.contentType = "application/vnd.microsoft.card.hero";
attachments1.contentUrl = null;
attachments1.content = "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \\\"\",\r\n      \"text\": \"text = &message back& <>= \\\"\",\r\n      \"displayText\": \"displayText = &message back& <>= \\\"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}";
attachments1.name = null;
attachments1.thumbnailUrl = null;
attachmentsList.add(attachments1);
chatMessage.attachments = attachmentsList;
LinkedList<ChatMessageMention> mentionsList = new LinkedList<ChatMessageMention>();
chatMessage.mentions = mentionsList;
LinkedList<ChatMessageReaction> reactionsList = new LinkedList<ChatMessageReaction>();
chatMessage.reactions = reactionsList;
LinkedList<ChatMessageHistoryItem> messageHistoryList = new LinkedList<ChatMessageHistoryItem>();
chatMessage.messageHistory = messageHistoryList;

graphClient.teams("e1234567-e123-4276-55555-6232b0e3a89a").channels("a7654321-e321-0000-0000-123b0e3a00a").messages("19:a21b0b0c05194ebc9e30000000000f61@thread.skype")
	.buildRequest()
	.patch(chatMessage);

```