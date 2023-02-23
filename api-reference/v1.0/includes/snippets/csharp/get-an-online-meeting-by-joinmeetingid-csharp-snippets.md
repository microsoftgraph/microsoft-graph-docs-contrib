---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeetings = await graphClient.Me.OnlineMeetings
	.Request()
	.Filter("joinMeetingIdSettings/joinMeetingId eq '1234567890'")
	.GetAsync();

```