---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Event
{
	OriginalStartTimeZone = "originalStartTimeZone-value",
	OriginalEndTimeZone = "originalEndTimeZone-value",
	ResponseStatus = new ResponseStatus
	{
		Response = ResponseType.None,
		Time = DateTimeOffset.Parse("datetime-value"),
	},
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsReminderOn = true,
};
var result = await graphClient.Groups["{group-id}"].Events["{event-id}"].PatchAsync(requestBody);


```