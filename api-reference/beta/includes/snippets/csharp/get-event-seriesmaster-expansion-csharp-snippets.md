---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["{event-id}"]
	.Request()
	.Expand("exceptionOccurrences,cancelledOccurrences")
	.Select("subject,start,end,occurrenceId,exceptionOccurrences,cancelledOccurrences")
	.GetAsync();

```