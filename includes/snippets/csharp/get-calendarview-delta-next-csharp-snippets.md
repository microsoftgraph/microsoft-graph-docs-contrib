---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Deltatoken = "R0usmcMDNGg0J1E";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```