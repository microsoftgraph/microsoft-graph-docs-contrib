---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.Recommendations.Item.ImpactedResources.Item.Postpone.PostponePostRequestBody
{
	PostponeUntilDateTime = DateTimeOffset.Parse("2023-03-01T09:40:39.0420371Z"),
};
var result = await graphClient.Directory.Recommendations["{recommendation-id}"].ImpactedResources["{impactedResource-id}"].Postpone.PostAsync(requestBody);


```