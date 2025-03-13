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
body.setContentType(BodyType.Text);
body.setContent("Edit text only");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
chatMessage.setAttachments(attachments);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
chatMessage.setMentions(mentions);
LinkedList<ChatMessageReaction> reactions = new LinkedList<ChatMessageReaction>();
chatMessage.setReactions(reactions);
LinkedList<ChatMessageHistoryItem> messageHistory = new LinkedList<ChatMessageHistoryItem>();
chatMessage.setMessageHistory(messageHistory);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().byChatMessageId("{chatMessage-id}").patch(chatMessage);


```