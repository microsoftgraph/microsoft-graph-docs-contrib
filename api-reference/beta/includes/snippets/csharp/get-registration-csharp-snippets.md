---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "microsoft.graph.meetingRegistration/customQuestions" };
});


```