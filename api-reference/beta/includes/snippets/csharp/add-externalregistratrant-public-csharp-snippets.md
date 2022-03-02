---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistrantBase = new ExternalMeetingRegistrant
{
	Id = "9d96988d-a66a-46ce-aad7-0b245615b297"
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants
	.Request()
	.AddAsync(meetingRegistrantBase);

```