---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Calendar.GetSchedule.GetSchedulePostRequestBody
{
	Schedules = new List<string>
	{
		"adelev@contoso.onmicrosoft.com",
		"meganb@contoso.onmicrosoft.com",
	},
	StartTime = new DateTimeTimeZone
	{
		DateTime = "2019-03-15T09:00:00",
		TimeZone = "Pacific Standard Time",
	},
	EndTime = new DateTimeTimeZone
	{
		DateTime = "2019-03-15T18:00:00",
		TimeZone = "Pacific Standard Time",
	},
	AvailabilityViewInterval = 60,
};
var result = await graphClient.Me.Calendar.GetSchedule.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```