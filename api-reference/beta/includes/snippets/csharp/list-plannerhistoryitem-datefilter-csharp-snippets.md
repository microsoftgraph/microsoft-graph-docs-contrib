---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Planner.Plans["{plannerPlan-id}"].HistoryItems.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z";
});


```