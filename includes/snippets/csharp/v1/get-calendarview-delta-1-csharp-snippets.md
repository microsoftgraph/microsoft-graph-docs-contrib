---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.CalendarView.Delta.GetAsDeltaGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartDateTime = "2016-12-01T00:00:00Z";
	requestConfiguration.QueryParameters.EndDateTime = "2016-12-30T00:00:00Z";
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```