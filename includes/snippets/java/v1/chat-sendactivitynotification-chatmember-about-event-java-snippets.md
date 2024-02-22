---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.chats.item.sendactivitynotification.SendActivityNotificationPostRequestBody sendActivityNotificationPostRequestBody = new com.microsoft.graph.chats.item.sendactivitynotification.SendActivityNotificationPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.Text);
topic.setValue("Weekly Virtual Social");
topic.setWebUrl("https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000");
sendActivityNotificationPostRequestBody.setTopic(topic);
ItemBody previewText = new ItemBody();
previewText.setContent("It will be fun!");
sendActivityNotificationPostRequestBody.setPreviewText(previewText);
sendActivityNotificationPostRequestBody.setActivityType("eventCreated");
ChatMembersNotificationRecipient recipient = new ChatMembersNotificationRecipient();
recipient.setOdataType("microsoft.graph.chatMembersNotificationRecipient");
recipient.setChatId("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2");
sendActivityNotificationPostRequestBody.setRecipient(recipient);
graphClient.chats().byChatId("{chat-id}").sendActivityNotification().post(sendActivityNotificationPostRequestBody);


```