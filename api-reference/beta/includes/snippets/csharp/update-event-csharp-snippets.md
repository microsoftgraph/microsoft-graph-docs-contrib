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
		Time = DateTimeOffset.Parse("2016-10-19T10:37:00Z"),
	},
	Recurrence = null,
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsOnlineMeeting = true,
	OnlineMeetingProvider = OnlineMeetingProviderType.TeamsForBusiness,
	IsReminderOn = true,
	HideAttendees = false,
	Categories = new List<string>
	{
		"Red category",
	},
};
var result = await graphClient.Me.Events["{event-id}"].PatchAsync(requestBody);


```