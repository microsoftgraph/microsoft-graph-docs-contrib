---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnlineMeeting
{
	StartDateTime = DateTimeOffset.Parse("2020-09-09T14:33:30.8546353-07:00"),
	EndDateTime = DateTimeOffset.Parse("2020-09-09T15:03:30.8566356-07:00"),
	Subject = "Patch Meeting Subject",
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].PatchAsync(requestBody);


```