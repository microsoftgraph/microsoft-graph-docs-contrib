---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Skiptoken = "R0usmcCM996atia_s";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```