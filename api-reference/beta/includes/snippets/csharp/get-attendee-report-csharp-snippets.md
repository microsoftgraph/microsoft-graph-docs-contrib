---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].AttendeeReport
	.Request()
	.GetAsync();

```