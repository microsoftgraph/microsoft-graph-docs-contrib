---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeeting onlineMeeting = new OnlineMeeting();
OffsetDateTime startDateTime = OffsetDateTime.parse("2025-02-01T14:30:34.2444915-07:00");
onlineMeeting.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2025-02-01T15:00:34.2464912-07:00");
onlineMeeting.setEndDateTime(endDateTime);
onlineMeeting.setSubject("Encrypted Meeting");
onlineMeeting.setIsEndToEndEncryptionEnabled(true);
OnlineMeeting result = graphClient.me().onlineMeetings().post(onlineMeeting);


```