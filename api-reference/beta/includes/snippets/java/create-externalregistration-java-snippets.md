---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalMeetingRegistration meetingRegistration = new ExternalMeetingRegistration();
meetingRegistration.allowedRegistrant = MeetingAudience.EVERYONE;

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration()
	.buildRequest()
	.post(meetingRegistration);

```