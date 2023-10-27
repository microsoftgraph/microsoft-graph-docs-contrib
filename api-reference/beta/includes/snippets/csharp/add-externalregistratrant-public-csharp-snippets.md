---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExternalMeetingRegistrant
{
	OdataType = "#microsoft.graph.externalMeetingRegistrant",
	Id = "9d96988d-a66a-46ce-aad7-0b245615b297",
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants.PostAsync(requestBody);


```