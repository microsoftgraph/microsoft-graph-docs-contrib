---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeeting onlineMeeting = new OnlineMeeting();
OffsetDateTime startDateTime = OffsetDateTime.parse("2019-07-12T14:30:34.2444915-07:00");
onlineMeeting.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2019-07-12T15:00:34.2464912-07:00");
onlineMeeting.setEndDateTime(endDateTime);
onlineMeeting.setSubject("User meeting");
onlineMeeting.setMeetingTemplateId("05b9ed5f-2ac3-4470-aae9-f4a0c30b1a4b");
OnlineMeeting result = graphClient.me().onlineMeetings().post(onlineMeeting);


```