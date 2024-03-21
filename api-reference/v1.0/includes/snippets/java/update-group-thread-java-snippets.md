---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationThread conversationThread = new ConversationThread();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("originalStartTimeZone", "originalStartTimeZone-value");
additionalData.put("originalEndTimeZone", "originalEndTimeZone-value");
 responseStatus = new ();
responseStatus.setResponse("");
responseStatus.setTime("datetime-value");
additionalData.put("responseStatus", responseStatus);
additionalData.put("iCalUId", "iCalUId-value");
additionalData.put("reminderMinutesBeforeStart", 99);
additionalData.put("isReminderOn", true);
conversationThread.setAdditionalData(additionalData);
ConversationThread result = graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").patch(conversationThread);


```