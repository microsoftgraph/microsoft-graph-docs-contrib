---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Users["{user-id}"].OnlineMeetings["{onlineMeeting-id}"].Transcripts["{callTranscript-id}"].Content.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Format = "text/vtt";
	requestConfiguration.Headers.Add("Accept", "application/vnd.openxmlformats-officedocument.wordprocessingml.document");
});


```