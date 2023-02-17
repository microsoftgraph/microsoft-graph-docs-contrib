---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["{event-id}"]
	.Request()
	.Select("isOnlineMeeting,onlineMeetingProvider,onlineMeeting")
	.GetAsync();

```