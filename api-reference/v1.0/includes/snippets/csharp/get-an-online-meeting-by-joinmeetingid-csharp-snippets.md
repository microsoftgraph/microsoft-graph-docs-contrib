---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.OnlineMeetings.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "joinMeetingIdSettings/joinMeetingId eq '1234567890'";
});


```