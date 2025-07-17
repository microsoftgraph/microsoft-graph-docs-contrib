---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.chats.item.sendactivitynotification.SendActivityNotificationPostRequestBody sendActivityNotificationPostRequestBody = new com.microsoft.graph.chats.item.sendactivitynotification.SendActivityNotificationPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.EntityUrl);
topic.setValue("https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2");
sendActivityNotificationPostRequestBody.setTopic(topic);
sendActivityNotificationPostRequestBody.setActivityType("taskCreated");
ItemBody previewText = new ItemBody();
previewText.setContent("new task created");
sendActivityNotificationPostRequestBody.setPreviewText(previewText);
ChatMembersNotificationRecipient recipient = new ChatMembersNotificationRecipient();
recipient.setOdataType("microsoft.graph.chatMembersNotificationRecipient");
recipient.setChatId("19:1c3af46e9e0f4a5293343c8813c47619@thread.v2");
sendActivityNotificationPostRequestBody.setRecipient(recipient);
LinkedList<KeyValuePair> templateParameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("taskId");
keyValuePair.setValue("Task 12322");
templateParameters.add(keyValuePair);
sendActivityNotificationPostRequestBody.setTemplateParameters(templateParameters);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("iconId", "taskCreatedIcon");
sendActivityNotificationPostRequestBody.setAdditionalData(additionalData);
graphClient.chats().byChatId("{chat-id}").sendActivityNotification().post(sendActivityNotificationPostRequestBody);


```