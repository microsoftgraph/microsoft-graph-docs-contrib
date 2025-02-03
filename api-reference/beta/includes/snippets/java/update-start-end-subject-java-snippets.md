---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeeting onlineMeeting = new OnlineMeeting();
OffsetDateTime startDateTime = OffsetDateTime.parse("2020-09-09T14:33:30.8546353-07:00");
onlineMeeting.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2020-09-09T15:03:30.8566356-07:00");
onlineMeeting.setEndDateTime(endDateTime);
onlineMeeting.setSubject("Patch Meeting Subject");
OnlineMeeting result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").patch(onlineMeeting);


```