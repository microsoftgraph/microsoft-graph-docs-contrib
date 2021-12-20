---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var registrants = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.Registrants
	.Request()
	.GetAsync();

```