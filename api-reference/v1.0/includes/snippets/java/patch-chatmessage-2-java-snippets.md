---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
chatMessage.messageType = ChatMessageType.MESSAGE;
chatMessage.deletedDateTime = OffsetDateTimeSerializer.deserialize("null");
chatMessage.subject = null;
chatMessage.summary = null;
chatMessage.importance = ChatMessageImportance.NORMAL;
chatMessage.locale = "en-us";
ChatMessageFromIdentitySet from = new ChatMessageFromIdentitySet();
from.application = null;
from.device = null;
from.conversation = null;
Identity user = new Identity();
user.id = "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40";
user.displayName = "Lam Cong";
user.userIdentityType = TeamworkUserIdentityType.AAD_USER;
from.user = user;
chatMessage.from = from;
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH";
chatMessage.body = body;
LinkedList<ChatMessageAttachment> attachmentsList = new LinkedList<ChatMessageAttachment>();
chatMessage.attachments = attachmentsList;
LinkedList<ChatMessageMention> mentionsList = new LinkedList<ChatMessageMention>();
ChatMessageMention mentions = new ChatMessageMention();
mentions.id = 0;
mentions.mentionText = "Raghav";
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
mentioned.application = null;
mentioned.device = null;
mentioned.conversation = null;
Identity user1 = new Identity();
user1.id = "f1b66449-b46d-49b0-9c3c-53c10234c818e";
user1.displayName = "Lam Cong";
user1.userIdentityType = TeamworkUserIdentityType.AAD_USER;
mentioned.user = user1;
mentions.mentioned = mentioned;
mentionsList.add(mentions);
ChatMessageMention mentions1 = new ChatMessageMention();
mentions1.id = 1;
mentions1.mentionText = "TestGlobalBot";
ChatMessageMentionedIdentitySet mentioned1 = new ChatMessageMentionedIdentitySet();
Identity application2 = new Identity();
application2.id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e";
application2.displayName = "TestGlobalBot";
application2.applicationIdentityType = TeamworkApplicationIdentityType.BOT;
mentioned1.application = application2;
mentioned1.device = null;
mentioned1.conversation = null;
mentioned1.user = null;
mentions1.mentioned = mentioned1;
mentionsList.add(mentions1);
chatMessage.mentions = mentionsList;
LinkedList<ChatMessageReaction> reactionsList = new LinkedList<ChatMessageReaction>();
chatMessage.reactions = reactionsList;
LinkedList<ChatMessageHistoryItem> messageHistoryList = new LinkedList<ChatMessageHistoryItem>();
chatMessage.messageHistory = messageHistoryList;

graphClient.teams("e1234567-e123-4276-55555-6232b0e3a89a").channels("a7654321-e321-0000-0000-123b0e3a00a").messages("19:a21b0b0c05194ebc9e30000000000f61@thread.skype")
	.buildRequest()
	.patch(chatMessage);

```