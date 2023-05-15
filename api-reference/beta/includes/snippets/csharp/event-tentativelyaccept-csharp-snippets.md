---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Events.Item.TentativelyAccept.TentativelyAcceptPostRequestBody
{
	Comment = "I may not be able to make this week. How about next week?",
	SendResponse = true,
	ProposedNewTime = new TimeSlot
	{
		Start = new DateTimeTimeZone
		{
			DateTime = "2019-12-02T18:00:00",
			TimeZone = "Pacific Standard Time",
		},
		End = new DateTimeTimeZone
		{
			DateTime = "2019-12-02T19:00:00",
			TimeZone = "Pacific Standard Time",
		},
	},
};
await graphClient.Me.Events["{event-id}"].TentativelyAccept.PostAsync(requestBody);


```