---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.CalendarView.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartDateTime = "2020-01-01T19:00:00-08:00";
	requestConfiguration.QueryParameters.EndDateTime = "2020-01-02T19:00:00-08:00";
});


```