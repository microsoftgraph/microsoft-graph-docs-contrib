---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callTranscript = await graphClient.Users["{user-id}"].OnlineMeetings["{onlineMeeting-id}"].Transcripts["{callTranscript-id}"]
	.Request()
	.GetAsync();

```