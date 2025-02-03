---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalMeetingRegistrant meetingRegistrantBase = new ExternalMeetingRegistrant();
meetingRegistrantBase.setOdataType("#microsoft.graph.externalMeetingRegistrant");
meetingRegistrantBase.setId("30494ab7-7338-4592-bfec-a4333be2a0a6");
meetingRegistrantBase.setTenantId("909c6581-5130-43e9-88f3-fcb3582cde37");
meetingRegistrantBase.setUserId("cc515404-b55c-466e-b896-992c918ecc01");
MeetingRegistrantBase result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().registrants().post(meetingRegistrantBase);


```