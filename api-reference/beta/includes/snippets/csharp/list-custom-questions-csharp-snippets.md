---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customQuestions = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.CustomQuestions
	.Request()
	.GetAsync();

```