---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.Recommendations.Item.ImpactedResources.Item.Dismiss.DismissPostRequestBody
{
	DismissReason = "Application is no longer needed.",
};
var result = await graphClient.Directory.Recommendations["{recommendation-id}"].ImpactedResources["{impactedResource-id}"].Dismiss.PostAsync(requestBody);


```