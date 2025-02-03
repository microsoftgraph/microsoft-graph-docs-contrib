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
onlineMeeting.setSubject("User meeting in Microsoft Teams channel.");
JoinMeetingIdSettings joinMeetingIdSettings = new JoinMeetingIdSettings();
joinMeetingIdSettings.setIsPasscodeRequired(false);
onlineMeeting.setJoinMeetingIdSettings(joinMeetingIdSettings);
OnlineMeeting result = graphClient.me().onlineMeetings().post(onlineMeeting);


```