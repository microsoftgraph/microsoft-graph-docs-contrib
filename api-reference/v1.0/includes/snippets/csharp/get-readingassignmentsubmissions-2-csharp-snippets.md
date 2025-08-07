---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Reports.ReadingAssignmentSubmissions.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "submissionDateTime gt 2025-06-10T00:00:00.000Z and submissionDateTime lt 2025-06-11T00:00:00Z";
});


```