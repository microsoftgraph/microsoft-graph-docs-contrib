---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistration = new ExternalMeetingRegistration
{
	AllowedRegistrant = MeetingAudience.Everyone
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration
	.Request()
	.AddAsync(meetingRegistration);

```