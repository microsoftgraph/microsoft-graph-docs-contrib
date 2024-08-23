---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
chatMessage.setMessageType(ChatMessageType.Message);
chatMessage.setDeletedDateTime(null);
chatMessage.setSubject(null);
chatMessage.setSummary(null);
chatMessage.setImportance(ChatMessageImportance.Normal);
chatMessage.setLocale("en-us");
ChatMessageFromIdentitySet from = new ChatMessageFromIdentitySet();
from.setApplication(null);
from.setDevice(null);
Identity user = new Identity();
user.setId("6b3f3c54-d09c-4fdd-b146-9b514a8a4f40");
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
body.setContent("<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
chatMessage.setAttachments(attachments);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
ChatMessageMention chatMessageMention = new ChatMessageMention();
chatMessageMention.setId(0);
chatMessageMention.setMentionText("Raghav");
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
mentioned.setApplication(null);
mentioned.setDevice(null);
mentioned.setConversation(null);
Identity user1 = new Identity();
user1.setId("f1b66449-b46d-49b0-9c3c-53c10234c818e");
user1.setDisplayName("Raghav Mankad");
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("userIdentityType", "aadUser");
user1.setAdditionalData(additionalData2);
mentioned.setUser(user1);
chatMessageMention.setMentioned(mentioned);
mentions.add(chatMessageMention);
ChatMessageMention chatMessageMention1 = new ChatMessageMention();
chatMessageMention1.setId(1);
chatMessageMention1.setMentionText("TestGlobalBot");
ChatMessageMentionedIdentitySet mentioned1 = new ChatMessageMentionedIdentitySet();
Identity application2 = new Identity();
application2.setId("03a02232-d8f5-4970-a77e-6e8c76ce7a4e");
application2.setDisplayName("TestGlobalBot");
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("applicationIdentityType", "bot");
application2.setAdditionalData(additionalData3);
mentioned1.setApplication(application2);
mentioned1.setDevice(null);
mentioned1.setConversation(null);
mentioned1.setUser(null);
chatMessageMention1.setMentioned(mentioned1);
mentions.add(chatMessageMention1);
chatMessage.setMentions(mentions);
LinkedList<ChatMessageReaction> reactions = new LinkedList<ChatMessageReaction>();
chatMessage.setReactions(reactions);
LinkedList<ChatMessageHistoryItem> messageHistory = new LinkedList<ChatMessageHistoryItem>();
chatMessage.setMessageHistory(messageHistory);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().byChatMessageId("{chatMessage-id}").patch(chatMessage);


```