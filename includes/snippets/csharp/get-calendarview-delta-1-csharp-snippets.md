---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Startdatetime = "2016-12-01T00:00:00Z";
	requestConfiguration.QueryParameters.Enddatetime = "2016-12-30T00:00:00Z";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```