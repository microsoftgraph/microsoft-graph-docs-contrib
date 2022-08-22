---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transcripts = await graphClient.Users["{user-id}"].OnlineMeetings["{onlineMeeting-id}"].Transcripts
	.Request()
	.GetAsync();

```