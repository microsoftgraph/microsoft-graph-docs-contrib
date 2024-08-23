---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalMeetingRegistrant meetingRegistrantBase = new ExternalMeetingRegistrant();
meetingRegistrantBase.setOdataType("#microsoft.graph.externalMeetingRegistrant");
meetingRegistrantBase.setId("9d96988d-a66a-46ce-aad7-0b245615b297");
MeetingRegistrantBase result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().registrants().post(meetingRegistrantBase);


```