---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxSettings mailboxSettings = new MailboxSettings();
AutomaticRepliesSetting automaticRepliesSetting = new AutomaticRepliesSetting();
automaticRepliesSetting.setStatus(AutomaticRepliesStatus.Scheduled);
DateTimeTimeZone scheduledStartDateTime = new DateTimeTimeZone();
scheduledStartDateTime.setDateTime("2016-03-20T18:00:00.0000000");
scheduledStartDateTime.setTimeZone("UTC");
automaticRepliesSetting.setScheduledStartDateTime(scheduledStartDateTime);
DateTimeTimeZone scheduledEndDateTime = new DateTimeTimeZone();
scheduledEndDateTime.setDateTime("2016-03-28T18:00:00.0000000");
scheduledEndDateTime.setTimeZone("UTC");
automaticRepliesSetting.setScheduledEndDateTime(scheduledEndDateTime);
mailboxSettings.setAutomaticRepliesSetting(automaticRepliesSetting);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.context", "https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings");
mailboxSettings.setAdditionalData(additionalData);
MailboxSettings result = graphClient.me().mailboxSettings().patch(mailboxSettings);


```