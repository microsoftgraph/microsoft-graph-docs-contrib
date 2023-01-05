---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingRegistrantBase = new ExternalMeetingRegistrant
{
	Id = "30494ab7-7338-4592-bfec-a4333be2a0a6",
	TenantId = "909c6581-5130-43e9-88f3-fcb3582cde37",
	UserId = "cc515404-b55c-466e-b896-992c918ecc01"
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants
	.Request()
	.AddAsync(meetingRegistrantBase);

```