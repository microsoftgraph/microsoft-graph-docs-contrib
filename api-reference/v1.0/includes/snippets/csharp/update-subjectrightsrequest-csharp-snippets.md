---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new SubjectRightsRequest
{
	OdataType = "#microsoft.graph.subjectRightsRequest",
	InternalDueDateTime = DateTimeOffset.Parse("2021-08-30T00:00:00Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].PatchAsync(requestBody);


```