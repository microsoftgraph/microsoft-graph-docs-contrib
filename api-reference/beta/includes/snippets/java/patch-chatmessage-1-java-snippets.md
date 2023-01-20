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
body.contentType = BodyType.TEXT;
body.content = "Edit text only";
chatMessage.body = body;
LinkedList<ChatMessageAttachment> attachmentsList = new LinkedList<ChatMessageAttachment>();
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