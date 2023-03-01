---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TimeOff
{
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SharedTimeOff = new TimeOffItem
	{
		TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
		StartDateTime = DateTimeOffset.Parse("2019-03-11T07:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2019-03-12T07:00:00Z"),
		Theme = ScheduleEntityTheme.White,
	},
	DraftTimeOff = new TimeOffItem
	{
		TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
		StartDateTime = DateTimeOffset.Parse("2019-03-11T07:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2019-03-12T07:00:00Z"),
		Theme = ScheduleEntityTheme.Pink,
	},
};
var result = await graphClient.Teams["{team-id}"].Schedule.TimesOff.PostAsync(requestBody);


```