---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Skiptoken = "R0usmci39OQxqJrxK4";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```