---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups["{group-id}"].CalendarView.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartDateTime = "2017-01-01T19:00:00-08:00";
	requestConfiguration.QueryParameters.EndDateTime = "2017-10-01T19:00:00.00-08:00";
	requestConfiguration.Headers.Add("Prefer", "outlook.body-content-type=\"text\"");
});


```