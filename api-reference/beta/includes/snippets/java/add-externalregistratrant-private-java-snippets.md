---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalMeetingRegistrant meetingRegistrantBase = new ExternalMeetingRegistrant();
meetingRegistrantBase.id = "30494ab7-7338-4592-bfec-a4333be2a0a6";
meetingRegistrantBase.tenantId = "909c6581-5130-43e9-88f3-fcb3582cde37";
meetingRegistrantBase.userId = "cc515404-b55c-466e-b896-992c918ecc01";

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().registrants()
	.buildRequest()
	.post(meetingRegistrantBase);

```