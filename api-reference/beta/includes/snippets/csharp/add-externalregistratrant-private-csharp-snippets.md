---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExternalMeetingRegistrant
{
	OdataType = "#microsoft.graph.externalMeetingRegistrant",
	Id = "30494ab7-7338-4592-bfec-a4333be2a0a6",
	TenantId = "909c6581-5130-43e9-88f3-fcb3582cde37",
	UserId = "cc515404-b55c-466e-b896-992c918ecc01",
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants.PostAsync(requestBody);


```