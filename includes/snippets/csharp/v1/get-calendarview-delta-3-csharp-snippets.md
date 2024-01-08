---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var deltaRequestBuilder = new Microsoft.Graph.Me.CalendarView.Delta.DeltaRequestBuilder("https://graph.microsoft.com/v1.0/me/calendarView/delta?$skiptoken=R0usmci39OQxqJrxK4", graphClient.RequestAdapter);
var result = await deltaRequestBuilder.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```