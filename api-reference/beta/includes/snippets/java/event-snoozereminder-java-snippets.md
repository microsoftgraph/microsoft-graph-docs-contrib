---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.events.item.snoozereminder.SnoozeReminderPostRequestBody snoozeReminderPostRequestBody = new com.microsoft.graph.beta.users.item.events.item.snoozereminder.SnoozeReminderPostRequestBody();
DateTimeTimeZone newReminderTime = new DateTimeTimeZone();
newReminderTime.setDateTime("2016-10-19T10:37:00Z");
newReminderTime.setTimeZone("timeZone-value");
snoozeReminderPostRequestBody.setNewReminderTime(newReminderTime);
graphClient.me().events().byEventId("{event-id}").snoozeReminder().post(snoozeReminderPostRequestBody);


```