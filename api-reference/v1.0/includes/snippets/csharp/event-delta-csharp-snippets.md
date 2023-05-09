---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Startdatetime = "{start_datetime}";
	requestConfiguration.QueryParameters.Enddatetime = "{end_datetime}";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```