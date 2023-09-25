---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SubjectRightsRequest
{
	OdataType = "#microsoft.graph.subjectRightsRequest",
	InternalDueDateTime = DateTimeOffset.Parse("2021-08-30T00:00:00Z"),
};
var result = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].PatchAsync(requestBody);


```