---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
chatMessage.setMessageType(ChatMessageType.Message);
chatMessage.setSubject(null);
chatMessage.setSummary(null);
chatMessage.setImportance(ChatMessageImportance.Normal);
chatMessage.setLocale("en-us");
ChatMessageFromIdentitySet from = new ChatMessageFromIdentitySet();
from.setApplication(null);
from.setDevice(null);
Identity user = new Identity();
user.setId("3b102402-813e-4e17-a6b2-f841aef1fdfc");
user.setDisplayName("Sumit Gupta");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userIdentityType", "aadUser");
user.setAdditionalData(additionalData);
from.setUser(user);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("conversation", null);
from.setAdditionalData(additionalData1);
chatMessage.setFrom(from);
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment chatMessageAttachment = new ChatMessageAttachment();
chatMessageAttachment.setId("e8f78756199240b88448ae0fc6db112d");
chatMessageAttachment.setContentType("application/vnd.microsoft.card.hero");
chatMessageAttachment.setContentUrl(null);
chatMessageAttachment.setContent("{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \"\",\r\n      \"value\": \"&i am back& <>= \"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}");
chatMessageAttachment.setName(null);
chatMessageAttachment.setThumbnailUrl(null);
attachments.add(chatMessageAttachment);
ChatMessageAttachment chatMessageAttachment1 = new ChatMessageAttachment();
chatMessageAttachment1.setId("638464e32834471ea202007da60a5ae6");
chatMessageAttachment1.setContentType("application/vnd.microsoft.card.hero");
chatMessageAttachment1.setContentUrl(null);
chatMessageAttachment1.setContent("{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \"\",\r\n      \"text\": \"text = &message back& <>= \"\",\r\n      \"displayText\": \"displayText = &message back& <>= \"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}");
chatMessageAttachment1.setName(null);
chatMessageAttachment1.setThumbnailUrl(null);
attachments.add(chatMessageAttachment1);
chatMessage.setAttachments(attachments);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
chatMessage.setMentions(mentions);
LinkedList<ChatMessageReaction> reactions = new LinkedList<ChatMessageReaction>();
chatMessage.setReactions(reactions);
LinkedList<ChatMessageHistoryItem> messageHistory = new LinkedList<ChatMessageHistoryItem>();
chatMessage.setMessageHistory(messageHistory);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().byChatMessageId("{chatMessage-id}").patch(chatMessage);


```